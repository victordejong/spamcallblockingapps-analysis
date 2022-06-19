package com.allinone.callerid.p136b;

import android.app.Activity;
import android.graphics.Typeface;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.CommentContent;
import com.allinone.callerid.customview.ExpandableTextView;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3739f1;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.b.g */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/g.class */
public class C2178g extends RecyclerView.Adapter<RecyclerView.AbstractC0905b0> {

    /* renamed from: d */
    private final Typeface f7599d = C3739f1.m24359b();

    /* renamed from: e */
    private List<CommentContent> f7600e;

    /* renamed from: f */
    private LayoutInflater f7601f;

    /* renamed from: g */
    private AbstractC2180b f7602g;

    /* renamed from: com.allinone.callerid.b.g$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/g$a.class */
    class View$OnClickListenerC2179a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7603d;

        View$OnClickListenerC2179a(int i) {
            C2178g.this = r4;
            this.f7603d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C2178g.this.f7602g != null) {
                C2178g.this.f7602g.mo26924a(view, this.f7603d);
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.g$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/g$b.class */
    public interface AbstractC2180b {
        /* renamed from: a */
        void mo26924a(View view, int i);
    }

    /* renamed from: com.allinone.callerid.b.g$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/g$c.class */
    public class C2181c extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        private ImageView f7605u;

        /* renamed from: v */
        private ExpandableTextView f7606v;

        /* renamed from: w */
        private TextView f7607w;

        /* renamed from: x */
        private TextView f7608x;

        /* renamed from: y */
        private TextView f7609y;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2181c(View view) {
            super(view);
            C2178g.this = r5;
            this.f7605u = (ImageView) view.findViewById(R$id.lib_report_comment);
            this.f7606v = (ExpandableTextView) view.findViewById(R$id.tv_comment_content);
            this.f7607w = (TextView) view.findViewById(R$id.tv_comment_date);
            this.f7608x = (TextView) view.findViewById(R$id.tv_comment_name);
            this.f7609y = (TextView) view.findViewById(R$id.tv_typelabel_subtype);
            this.f7607w.setTypeface(r5.f7599d);
            this.f7608x.setTypeface(r5.f7599d);
            this.f7609y.setTypeface(r5.f7599d);
        }
    }

    public C2178g(Activity activity, List<CommentContent> list) {
        this.f7600e = new ArrayList();
        this.f7600e = list;
        this.f7601f = LayoutInflater.from(activity);
    }

    /* renamed from: C */
    public void m27878C(AbstractC2180b abstractC2180b) {
        this.f7602g = abstractC2180b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: d */
    public int mo4501d() {
        List<CommentContent> list = this.f7600e;
        return list != null ? list.size() : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public int mo4499f(int i) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        List<CommentContent> list;
        if (!(abstractC0905b0 instanceof C2181c) || (list = this.f7600e) == null || list.size() <= 0) {
            return;
        }
        CommentContent commentContent = this.f7600e.get(i);
        C2181c c2181c = (C2181c) abstractC0905b0;
        c2181c.f7606v.setText(commentContent.getContent(), i);
        c2181c.f7607w.setText(commentContent.getCreate_time());
        if (commentContent.getType_label() == null || "".equals(commentContent.getType_label())) {
            c2181c.f7609y.setVisibility(8);
        } else {
            c2181c.f7609y.setText(Html.fromHtml(EZCallApplication.m26146c().getResources().getString(R$string.report_as) + ("<font color='#ee5164'> " + commentContent.getType_label() + "</font>")));
            c2181c.f7609y.setVisibility(0);
        }
        String author = this.f7600e.get(i).getAuthor();
        if (author != null && !"".equals(author)) {
            c2181c.f7608x.setText(author);
            if (author.equals(EZCallApplication.m26146c().getResources().getString(R$string.you))) {
                c2181c.f7605u.setVisibility(4);
            } else {
                c2181c.f7605u.setVisibility(0);
            }
        }
        c2181c.f7605u.setOnClickListener(new View$OnClickListenerC2179a(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new C2181c(this.f7601f.inflate(R$layout.comment_item, viewGroup, false));
        }
        return null;
    }
}
