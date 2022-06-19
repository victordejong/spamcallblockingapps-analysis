package com.bytedance.sdk.openadsdk.dislike;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.dislike.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/c.class */
public class DialogC4854c extends TTDislikeDialogAbstract {

    /* renamed from: a */
    private TTDislikeListView f17783a;

    /* renamed from: b */
    private TTDislikeListView f17784b;

    /* renamed from: c */
    private RelativeLayout f17785c;

    /* renamed from: d */
    private View f17786d;

    /* renamed from: e */
    private C4861b f17787e;

    /* renamed from: f */
    private C4861b f17788f;

    /* renamed from: g */
    private C4557i f17789g;

    /* renamed from: h */
    private AbstractC4860a f17790h;

    /* renamed from: com.bytedance.sdk.openadsdk.dislike.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/c$a.class */
    public interface AbstractC4860a {
        /* renamed from: a */
        void mo33724a();

        /* renamed from: a */
        void mo33723a(int i, FilterWord filterWord);

        /* renamed from: b */
        void mo33722b();

        /* renamed from: c */
        void mo33721c();
    }

    /* renamed from: com.bytedance.sdk.openadsdk.dislike.c$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/c$b.class */
    public static class C4861b extends BaseAdapter {

        /* renamed from: a */
        private boolean f17796a = true;

        /* renamed from: b */
        private final List<FilterWord> f17797b;

        /* renamed from: c */
        private final LayoutInflater f17798c;

        /* renamed from: com.bytedance.sdk.openadsdk.dislike.c$b$a */
        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/dislike/c$b$a.class */
        static class C4862a {

            /* renamed from: a */
            TextView f17799a;

            /* renamed from: b */
            ImageView f17800b;

            private C4862a() {
            }
        }

        public C4861b(LayoutInflater layoutInflater, List<FilterWord> list) {
            this.f17797b = list;
            this.f17798c = layoutInflater;
        }

        /* renamed from: a */
        public void m33720a() {
            this.f17797b.clear();
            notifyDataSetChanged();
        }

        /* renamed from: a */
        public void m33719a(List<FilterWord> list) {
            if (list == null || list.isEmpty()) {
                return;
            }
            this.f17797b.clear();
            this.f17797b.addAll(list);
            notifyDataSetChanged();
        }

        /* renamed from: a */
        public void m33718a(boolean z) {
            this.f17796a = z;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<FilterWord> list = this.f17797b;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f17797b.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C4862a c4862a;
            if (view == null) {
                C4862a c4862a2 = new C4862a();
                LayoutInflater layoutInflater = this.f17798c;
                View inflate = layoutInflater.inflate(C5486x.m32065f(layoutInflater.getContext(), "tt_dialog_listview_item"), viewGroup, false);
                c4862a2.f17799a = (TextView) inflate.findViewById(C5486x.m32066e(this.f17798c.getContext(), "tt_item_tv"));
                c4862a2.f17800b = (ImageView) inflate.findViewById(C5486x.m32066e(this.f17798c.getContext(), "tt_item_arrow"));
                inflate.setTag(c4862a2);
                c4862a = c4862a2;
                view = inflate;
            } else {
                c4862a = (C4862a) view.getTag();
            }
            FilterWord filterWord = this.f17797b.get(i);
            c4862a.f17799a.setText(filterWord.getName());
            if (i != this.f17797b.size() - 1) {
                c4862a.f17799a.setBackgroundResource(C5486x.m32067d(this.f17798c.getContext(), "tt_dislike_middle_seletor"));
            } else {
                c4862a.f17799a.setBackgroundResource(C5486x.m32067d(this.f17798c.getContext(), "tt_dislike_bottom_seletor"));
            }
            if (this.f17796a && i == 0) {
                c4862a.f17799a.setBackgroundResource(C5486x.m32067d(this.f17798c.getContext(), "tt_dislike_top_seletor"));
            }
            if (filterWord.hasSecondOptions()) {
                c4862a.f17800b.setVisibility(0);
            } else {
                c4862a.f17800b.setVisibility(8);
            }
            return view;
        }
    }

    public DialogC4854c(Context context, C4557i c4557i) {
        super(context, C5486x.m32064g(context, "tt_dislikeDialog"));
        this.f17789g = c4557i;
    }

    /* renamed from: a */
    private void m33735a() {
        Window window = getWindow();
        if (window != null) {
            window.setGravity(80);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.y = 50;
            window.setAttributes(attributes);
        }
    }

    /* renamed from: a */
    private void m33734a(Context context) {
        this.f17785c = (RelativeLayout) findViewById(C5486x.m32066e(getContext(), "tt_dislike_title_content"));
        this.f17786d = findViewById(C5486x.m32066e(getContext(), "tt_dislike_line1"));
        findViewById(C5486x.m32066e(getContext(), "tt_dislike_header_back")).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DialogC4854c.this.m33726c();
                if (DialogC4854c.this.f17790h != null) {
                    DialogC4854c.this.f17790h.mo33721c();
                }
            }
        });
        TTDislikeListView tTDislikeListView = (TTDislikeListView) findViewById(C5486x.m32066e(getContext(), "tt_filer_words_lv"));
        this.f17783a = tTDislikeListView;
        tTDislikeListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.4
            /* JADX WARN: Type inference failed for: r0v9, types: [android.widget.Adapter] */
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                try {
                    FilterWord filterWord = (FilterWord) adapterView.getAdapter().getItem(i);
                    if (filterWord.hasSecondOptions()) {
                        DialogC4854c.this.m33733a(filterWord);
                        if (DialogC4854c.this.f17790h == null) {
                            return;
                        }
                        DialogC4854c.this.f17790h.mo33723a(i, filterWord);
                        return;
                    }
                } catch (Throwable th) {
                }
                if (DialogC4854c.this.f17790h != null) {
                    try {
                        DialogC4854c.this.f17790h.mo33723a(i, DialogC4854c.this.f17789g.m35226U().get(i));
                    } catch (Throwable th2) {
                    }
                }
                DialogC4854c.this.dismiss();
            }
        });
        TTDislikeListView tTDislikeListView2 = (TTDislikeListView) findViewById(C5486x.m32066e(getContext(), "tt_filer_words_lv_second"));
        this.f17784b = tTDislikeListView2;
        tTDislikeListView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.5
            /* JADX WARN: Type inference failed for: r0v4, types: [android.widget.Adapter] */
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (DialogC4854c.this.f17790h != null) {
                    try {
                        DialogC4854c.this.f17790h.mo33723a(i, (FilterWord) adapterView.getAdapter().getItem(i));
                    } catch (Throwable th) {
                    }
                }
                DialogC4854c.this.dismiss();
            }
        });
    }

    /* renamed from: a */
    public void m33733a(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        C4861b c4861b = this.f17788f;
        if (c4861b != null) {
            c4861b.m33719a(filterWord.getOptions());
        }
        RelativeLayout relativeLayout = this.f17785c;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
        }
        View view = this.f17786d;
        if (view != null) {
            view.setVisibility(0);
        }
        TTDislikeListView tTDislikeListView = this.f17783a;
        if (tTDislikeListView != null) {
            tTDislikeListView.setVisibility(8);
        }
        TTDislikeListView tTDislikeListView2 = this.f17784b;
        if (tTDislikeListView2 == null) {
            return;
        }
        tTDislikeListView2.setVisibility(0);
    }

    /* renamed from: b */
    private void m33728b() {
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                if (DialogC4854c.this.f17790h != null) {
                    DialogC4854c.this.f17790h.mo33724a();
                }
            }
        });
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (DialogC4854c.this.f17790h != null) {
                    DialogC4854c.this.f17790h.mo33722b();
                }
            }
        });
        C4861b c4861b = new C4861b(getLayoutInflater(), this.f17789g.m35226U());
        this.f17787e = c4861b;
        this.f17783a.setAdapter((ListAdapter) c4861b);
        C4861b c4861b2 = new C4861b(getLayoutInflater(), new ArrayList());
        this.f17788f = c4861b2;
        c4861b2.m33718a(false);
        this.f17784b.setAdapter((ListAdapter) this.f17788f);
    }

    /* renamed from: c */
    public void m33726c() {
        RelativeLayout relativeLayout = this.f17785c;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        View view = this.f17786d;
        if (view != null) {
            view.setVisibility(8);
        }
        TTDislikeListView tTDislikeListView = this.f17783a;
        if (tTDislikeListView != null) {
            tTDislikeListView.setVisibility(0);
        }
        C4861b c4861b = this.f17788f;
        if (c4861b != null) {
            c4861b.m33720a();
        }
        TTDislikeListView tTDislikeListView2 = this.f17784b;
        if (tTDislikeListView2 != null) {
            tTDislikeListView2.setVisibility(8);
        }
    }

    /* renamed from: a */
    public void m33732a(C4557i c4557i) {
        C4861b c4861b = this.f17787e;
        if (c4861b == null || c4557i == null) {
            return;
        }
        this.f17789g = c4557i;
        c4861b.m33719a(c4557i.m35226U());
        setMaterialMeta(this.f17789g);
    }

    /* renamed from: a */
    public void m33731a(AbstractC4860a abstractC4860a) {
        this.f17790h = abstractC4860a;
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public int getLayoutId() {
        return C5486x.m32065f(getContext(), "tt_dislike_dialog_layout");
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public ViewGroup.LayoutParams getLayoutParams() {
        return new ViewGroup.LayoutParams(C5443ag.m32218c(getContext()) - 120, -2);
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public int[] getTTDislikeListViewIds() {
        return new int[]{C5486x.m32066e(getContext(), "tt_filer_words_lv"), C5486x.m32066e(getContext(), "tt_filer_words_lv_second")};
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        m33735a();
        m33734a(getContext());
        m33728b();
        setMaterialMeta(this.f17789g);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        m33726c();
    }
}
