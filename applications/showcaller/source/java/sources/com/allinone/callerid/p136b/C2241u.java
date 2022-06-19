package com.allinone.callerid.p136b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.bean.ShareAppInfo;
import java.util.List;
/* renamed from: com.allinone.callerid.b.u */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/u.class */
public class C2241u extends BaseAdapter {

    /* renamed from: d */
    private List<ShareAppInfo> f7875d;

    /* renamed from: e */
    private Context f7876e;

    public C2241u(Context context, List<ShareAppInfo> list) {
        this.f7876e = context;
        this.f7875d = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7875d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = View.inflate(this.f7876e, R$layout.share_itme, null);
            ImageView imageView = (ImageView) view2.findViewById(R$id.iv_share_itme);
            ImageView imageView2 = (ImageView) view2.findViewById(R$id.iv_zan);
            imageView.setBackgroundDrawable(this.f7875d.get(i).getAppIcon());
            ((TextView) view2.findViewById(R$id.tv_share_itme)).setText(this.f7875d.get(i).getAppName());
            String appPkgName = this.f7875d.get(i).getAppPkgName();
            appPkgName.hashCode();
            boolean z = true;
            switch (appPkgName.hashCode()) {
                case -1547699361:
                    if (appPkgName.equals("com.whatsapp")) {
                        z = false;
                        break;
                    }
                    break;
                case -1430093937:
                    if (appPkgName.equals("com.google.android.apps.messaging")) {
                        z = true;
                        break;
                    }
                    break;
                case -695601689:
                    if (appPkgName.equals("com.android.mms")) {
                        z = true;
                        break;
                    }
                    break;
                case 10619783:
                    if (appPkgName.equals("com.twitter.android")) {
                        z = true;
                        break;
                    }
                    break;
                case 714499313:
                    if (appPkgName.equals("com.facebook.katana")) {
                        z = true;
                        break;
                    }
                    break;
                case 908140028:
                    if (appPkgName.equals("com.facebook.orca")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    imageView2.setVisibility(0);
                    break;
                case true:
                    imageView2.setVisibility(0);
                    break;
                case true:
                    imageView2.setVisibility(0);
                    break;
                case true:
                    imageView2.setVisibility(0);
                    break;
                case true:
                    imageView2.setVisibility(0);
                    break;
                case true:
                    imageView2.setVisibility(0);
                    break;
                default:
                    imageView2.setVisibility(8);
                    break;
            }
        }
        return view2;
    }
}
