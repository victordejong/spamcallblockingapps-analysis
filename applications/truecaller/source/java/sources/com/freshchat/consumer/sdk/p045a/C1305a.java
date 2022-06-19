package com.freshchat.consumer.sdk.p045a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.Article;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.a.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/a.class */
public class C1305a extends BaseAdapter {

    /* renamed from: ce */
    private final LayoutInflater f3530ce;

    /* renamed from: cf */
    private List<Article> f3531cf;
    private final Context context;

    /* renamed from: com.freshchat.consumer.sdk.a.a$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/a$a.class */
    public static class C1306a {

        /* renamed from: cg */
        public TextView f3532cg;
    }

    public C1305a(Context context, List<Article> list) {
        this.context = context;
        this.f3531cf = list;
        this.f3530ce = LayoutInflater.from(context);
    }

    /* renamed from: d */
    public Article getItem(int i) {
        List<Article> list = this.f3531cf;
        if (list != null) {
            return list.get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<Article> list = this.f3531cf;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return Long.parseLong(this.f3531cf.get(i).getId());
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C1306a c1306a;
        if (view == null) {
            C1306a c1306a2 = new C1306a();
            View inflate = this.f3530ce.inflate(C1298R.layout.freshchat_listitem_article, viewGroup, false);
            c1306a2.f3532cg = (TextView) inflate.findViewById(C1298R.C1300id.freshchat_article_listitem_title);
            inflate.setTag(c1306a2);
            c1306a = c1306a2;
            view = inflate;
        } else {
            c1306a = (C1306a) view.getTag();
        }
        c1306a.f3532cg.setText(this.f3531cf.get(i).getTitle());
        return view;
    }
}
