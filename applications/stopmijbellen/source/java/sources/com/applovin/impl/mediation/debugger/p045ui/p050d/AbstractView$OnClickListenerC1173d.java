package com.applovin.impl.mediation.debugger.p045ui.p050d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.C1583R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.applovin.impl.mediation.debugger.ui.d.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/d/d.class */
public abstract class AbstractView$OnClickListenerC1173d extends BaseAdapter implements View.OnClickListener {

    /* renamed from: a */
    private final LayoutInflater f4260a;

    /* renamed from: c */
    public final Context f4262c;

    /* renamed from: e */
    private AbstractC1175a f4264e;

    /* renamed from: b */
    private List<C1169c> f4261b = new ArrayList();

    /* renamed from: d */
    private Map<Integer, Integer> f4263d = new HashMap();

    /* renamed from: com.applovin.impl.mediation.debugger.ui.d.d$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/d/d$a.class */
    public interface AbstractC1175a {
        /* renamed from: a */
        void mo6214a(C1167a c1167a, C1169c c1169c);
    }

    public AbstractView$OnClickListenerC1173d(Context context) {
        this.f4262c = context;
        this.f4260a = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* renamed from: e */
    private C1167a m6224e(int i) {
        for (int i2 = 0; i2 < mo6217b(); i2++) {
            Integer num = this.f4263d.get(Integer.valueOf(i2));
            if (num != null) {
                if (i <= num.intValue() + mo6218a(i2)) {
                    return new C1167a(i2, i - (num.intValue() + 1));
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    public abstract int mo6218a(int i);

    /* renamed from: a */
    public Bitmap m6227a(ListView listView) {
        int count = getCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(listView.getWidth(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        ArrayList arrayList = new ArrayList(count);
        int i = 0;
        for (int i2 = 0; i2 < count; i2++) {
            View view = getView(i2, null, listView);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            Bitmap createBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
            view.draw(new Canvas(createBitmap));
            arrayList.add(createBitmap);
            i += view.getMeasuredHeight();
        }
        Bitmap createBitmap2 = Bitmap.createBitmap(listView.getMeasuredWidth(), i, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap2);
        Paint paint = new Paint();
        Iterator it2 = arrayList.iterator();
        int i3 = 0;
        while (it2.hasNext()) {
            Bitmap bitmap = (Bitmap) it2.next();
            canvas.drawBitmap(bitmap, 0.0f, i3, paint);
            i3 += bitmap.getHeight();
            bitmap.recycle();
        }
        return createBitmap2;
    }

    /* renamed from: a */
    public void m6226a(AbstractC1175a abstractC1175a) {
        this.f4264e = abstractC1175a;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    /* renamed from: b */
    public abstract int mo6217b();

    /* renamed from: b */
    public abstract C1169c mo6216b(int i);

    /* renamed from: c */
    public abstract List<C1169c> mo6215c(int i);

    /* renamed from: d */
    public C1169c getItem(int i) {
        return this.f4261b.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4261b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return getItem(i).m6249i();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C1168b c1168b;
        C1169c item = getItem(i);
        if (view == null) {
            view = this.f4260a.inflate(item.m6248j(), viewGroup, false);
            c1168b = new C1168b();
            c1168b.f4220a = (TextView) view.findViewById(16908308);
            c1168b.f4221b = (TextView) view.findViewById(16908309);
            c1168b.f4222c = (ImageView) view.findViewById(C1583R.C1586id.imageView);
            c1168b.f4223d = (ImageView) view.findViewById(C1583R.C1586id.detailImageView);
            view.setTag(c1168b);
            view.setOnClickListener(this);
        } else {
            c1168b = (C1168b) view.getTag();
        }
        c1168b.m6259a(i);
        c1168b.m6258a(item);
        view.setEnabled(item.mo6255b());
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return C1169c.m6250h();
    }

    /* renamed from: i */
    public void m6223i() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.debugger.ui.d.d.1
            @Override // java.lang.Runnable
            public void run() {
                AbstractView$OnClickListenerC1173d.this.notifyDataSetChanged();
            }
        });
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return getItem(i).mo6255b();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.f4261b = new ArrayList();
        Integer valueOf = Integer.valueOf(mo6217b());
        this.f4263d = new HashMap(valueOf.intValue());
        Integer num = 0;
        for (int i = 0; i < valueOf.intValue(); i++) {
            Integer valueOf2 = Integer.valueOf(mo6218a(i));
            if (valueOf2.intValue() != 0) {
                this.f4261b.add(mo6216b(i));
                this.f4261b.addAll(mo6215c(i));
                this.f4263d.put(Integer.valueOf(i), num);
                num = Integer.valueOf(valueOf2.intValue() + 1 + num.intValue());
            }
        }
        this.f4261b.add(new C1176e(""));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1168b c1168b = (C1168b) view.getTag();
        C1169c m6257b = c1168b.m6257b();
        C1167a m6224e = m6224e(c1168b.m6260a());
        AbstractC1175a abstractC1175a = this.f4264e;
        if (abstractC1175a == null || m6224e == null) {
            return;
        }
        abstractC1175a.mo6214a(m6224e, m6257b);
    }
}
