package com.uservoice.uservoicesdk.g;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.i;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.activity.ArticleActivity;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.e.g;
import com.uservoice.uservoicesdk.h.a;
import com.uservoice.uservoicesdk.model.Article;
import com.uservoice.uservoicesdk.ui.l;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/g/a.class */
public final class a extends b {
    private Article d;
    private WebView e;
    private View f;
    private View g;
    private int h;

    public static a a(Article article, int i) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putParcelable(Article.class.getName(), article);
        bundle.putInt("key_index", i);
        aVar.setArguments(bundle);
        return aVar;
    }

    static /* synthetic */ void b(a aVar) {
        if (aVar.getActivity() != null) {
            ArticleActivity articleActivity = (ArticleActivity) aVar.getActivity();
            articleActivity.n[aVar.h] = true;
        }
    }

    static /* synthetic */ void c(a aVar) {
        new g().a(aVar.getFragmentManager(), "UnhelpfulDialogFragment");
    }

    static /* synthetic */ boolean d(a aVar) {
        boolean z;
        i activity = aVar.getActivity();
        if (activity != null) {
            ArticleActivity articleActivity = (ArticleActivity) activity;
            z = articleActivity.n[aVar.h];
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.uservoice.uservoicesdk.g.b
    protected final void a() {
        this.d = (Article) getArguments().getParcelable(Article.class.getName());
        this.h = getArguments().getInt("key_index");
    }

    @Override // com.uservoice.uservoicesdk.g.b
    protected final void d() {
        this.f = a(d.b.J);
        this.g = a(d.b.am);
        this.e = new WebView(getActivity());
        ((LinearLayout) a(d.b.C)).addView(this.e);
        WebView webView = this.e;
        Article article = this.d;
        String str = "iframe, img { width: 100%; }";
        if (l.a((Context) getActivity())) {
            webView.setBackgroundColor(-16777216);
            str = "iframe, img { width: 100%; }body { background-color: #000000; color: #F6F6F6; } a { color: #0099FF; }";
        }
        String format = String.format("<html><head><meta charset=\"utf-8\"><link rel=\"stylesheet\" type=\"text/css\" href=\"http://cdn.uservoice.com/stylesheets/vendor/typeset.css\"/><style>%s</style></head><body class=\"typeset\" style=\"font-family: sans-serif; margin: 1em\"><h3>%s</h3>%s</body></html>", str, article.f4714a, article.f4715b);
        webView.setWebChromeClient(new WebChromeClient());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setPluginState(WebSettings.PluginState.ON);
        webView.loadUrl(String.format("data:text/html;charset=utf-8,%s", Uri.encode(format)));
    }

    @Override // com.uservoice.uservoicesdk.g.b
    protected final void e() {
        this.f.setOnClickListener(new View.OnClickListener() { // from class: com.uservoice.uservoicesdk.g.a.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.VOTE_ARTICLE, a.this.d.c());
                a aVar = a.this;
                int i = d.f.S;
                if (aVar.isAdded()) {
                    String string = aVar.getString(i);
                    if (aVar.isAdded()) {
                        if (aVar.c == null) {
                            aVar.c = Toast.makeText(aVar.f4683b, string, 0);
                        } else {
                            aVar.c.setText(string);
                        }
                        aVar.c.show();
                    }
                }
                a.b(a.this);
                a.this.a(d.b.K).setVisibility(8);
                Context context = e.a().f4630a;
                int c = a.this.d.c();
                if (com.uservoice.uservoicesdk.h.a.d) {
                    com.uservoice.uservoicesdk.h.a.a(context).a(a.b.a(a.b.EnumC0145a.Click_Useful, c));
                }
            }
        });
        this.g.setOnClickListener(new View.OnClickListener() { // from class: com.uservoice.uservoicesdk.g.a.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (!e.a().f4631b.q && e.a().f4631b.c()) {
                    a.c(a.this);
                }
                a.b(a.this);
                a.this.a(d.b.K).setVisibility(8);
                Context context = e.a().f4630a;
                int c = a.this.d.c();
                if (com.uservoice.uservoicesdk.h.a.d) {
                    com.uservoice.uservoicesdk.h.a.a(context).a(a.b.a(a.b.EnumC0145a.Click_UnUseful, c));
                }
            }
        });
        this.e.setWebViewClient(new WebViewClient() { // from class: com.uservoice.uservoicesdk.g.a.3
            @Override // android.webkit.WebViewClient
            public final void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (!a.d(a.this)) {
                    a.this.a(d.b.K).setVisibility(0);
                }
            }

            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
                try {
                    a.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                    return true;
                } catch (Exception e) {
                    return true;
                }
            }
        });
    }

    @Override // com.uservoice.uservoicesdk.g.b
    protected final int f() {
        return d.c.i;
    }

    @Override // com.uservoice.uservoicesdk.g.b, android.support.v4.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public final void onDestroy() {
        if (this.e != null) {
            this.e.removeAllViews();
            this.e.destroy();
        }
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public final void onPause() {
        super.onPause();
        if (this.e != null) {
            this.e.onPause();
        }
    }

    @Override // android.support.v4.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.e != null) {
            this.e.onResume();
        }
    }
}
