package gogolook.callgogolook2.search.views.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/views/view/SearchBar.class */
public class SearchBar extends RelativeLayout {
    @BindView(R$id.iv_searchbar_delete_btn)
    public ImageView deleteButton;
    @BindView(R$id.et_search_keyword)
    public SearchBarEditText keywordEdit;
    @BindView(R$id.iv_searchbar_voice_btn)
    public ImageView voiceButton;

    /* renamed from: gogolook.callgogolook2.search.views.view.SearchBar$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/views/view/SearchBar$a.class */
    public class View$OnClickListenerC5159a implements View.OnClickListener {
        public View$OnClickListenerC5159a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchBar.this.keywordEdit.setText((CharSequence) null);
            C14217x3.m2180a((View) SearchBar.this.voiceButton, true);
            SearchBar.this.deleteButton.setVisibility(8);
        }
    }

    public SearchBar(Context context) {
        this(context, null);
    }

    public SearchBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        addView((RelativeLayout) ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R$layout.search_bar, (ViewGroup) null), -1, -2);
        ButterKnife.bind(this);
        this.keywordEdit.setBackgroundColor(0);
        this.keywordEdit.setGravity(19);
        this.keywordEdit.setImeOptions(2);
        if (C13891a.m3145q()) {
            this.keywordEdit.setHint(C14206w4.m2225a((int) R$string.textsearch_searchbar_name));
        } else {
            this.keywordEdit.setHint(C14206w4.m2225a((int) R$string.inappsearch_searchbar_hint));
        }
        m26187a();
    }

    /* renamed from: a */
    public final void m26187a() {
        this.deleteButton.setOnClickListener(new View$OnClickListenerC5159a());
    }
}
