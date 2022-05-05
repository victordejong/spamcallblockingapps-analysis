package com.asus.contacts.yellowpage;

import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.activities.RequestFineLocationPermissionsAcitvity;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/k.class */
public class k extends BaseAdapter {
    boolean c;
    boolean d;
    private Context h;
    private Fragment i;
    private LayoutInflater j;

    /* renamed from: a  reason: collision with root package name */
    public final String f2825a = k.class.getSimpleName();
    private final int f = 2;
    private final int g = 3;

    /* renamed from: b  reason: collision with root package name */
    int f2826b = 0;
    ArrayList<l> e = new ArrayList<>();
    private View.OnClickListener k = new View.OnClickListener() { // from class: com.asus.contacts.yellowpage.k.3
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            String[] strArr = (String[]) view.getTag();
            if (k.this.f2826b == 0 && strArr.length == 2) {
                Toast.makeText(k.this.h, k.this.h.getString(2131755122), 0).show();
            } else if (k.this.f2826b != 1 && strArr.length != 3) {
                Intent intent = new Intent(view.getContext(), AsusBusinessListActivity.class);
                intent.setAction("action.asus.yellowpage.search_by_category");
                intent.putExtra("extra_category", strArr[0]);
                intent.putExtra("extra_parent_code", strArr[1]);
                intent.putExtra("extra_is_near_by", false);
                view.getContext().startActivity(intent);
            } else if (k.this.c || k.this.d) {
                Intent intent2 = new Intent(view.getContext(), AsusBusinessListActivity.class);
                intent2.setAction("action.asus.yellowpage.search_by_category");
                intent2.putExtra("extra_category", strArr[0]);
                intent2.putExtra("extra_parent_code", strArr[1]);
                intent2.putExtra("extra_is_near_by", true);
                view.getContext().startActivity(intent2);
            } else if (Build.VERSION.SDK_INT < 23 || !RequestFineLocationPermissionsAcitvity.startPermissionActivity(k.this.h, false)) {
                k.this.i.getFragmentManager().beginTransaction();
                if (k.this.i.getFragmentManager().findFragmentByTag(k.this.h.getResources().getString(2131755612)) == null) {
                    m.a("event_location_service_unavailable").show(k.this.i.getFragmentManager(), k.this.h.getResources().getString(2131755612));
                }
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/k$a.class */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public TextView f2832a;

        public a(View view) {
            this.f2832a = (TextView) view.findViewById(2131296930);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/k$b.class */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public View[] f2833a = new View[4];

        /* renamed from: b  reason: collision with root package name */
        public ImageView[] f2834b = new ImageView[4];
        public TextView[] c = new TextView[4];

        public b(View view) {
            this.f2833a[0] = view.findViewById(2131296860);
            this.f2833a[1] = view.findViewById(2131297255);
            this.f2833a[2] = view.findViewById(2131297396);
            this.f2833a[3] = view.findViewById(2131296873);
            for (int i = 0; i < 4; i++) {
                this.f2834b[i] = (ImageView) this.f2833a[i].findViewById(2131296945);
                this.c[i] = (TextView) this.f2833a[i].findViewById(2131296628);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/k$c.class */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        public FrameLayout f2835a;

        /* renamed from: b  reason: collision with root package name */
        public FrameLayout f2836b;
        public TextView c;
        public TextView d;
        public ImageView e;
        public ImageView f;

        public c(View view) {
            this.f2835a = (FrameLayout) view.findViewById(2131296860);
            this.f2836b = (FrameLayout) view.findViewById(2131297255);
            this.c = (TextView) view.findViewById(2131296859);
            this.d = (TextView) view.findViewById(2131297254);
            this.e = (ImageView) view.findViewById(2131296861);
            this.f = (ImageView) view.findViewById(2131297257);
        }
    }

    public k(Context context, Fragment fragment, LayoutInflater layoutInflater) {
        this.h = context;
        this.i = fragment;
        this.j = layoutInflater;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public l getItem(int i) {
        return (this.e == null || i >= this.e.size()) ? null : this.e.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.e != null ? this.e.size() : 0;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return (this.e == null || i >= this.e.size()) ? -1 : this.e.get(i).e;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        View view2;
        View view3;
        c cVar;
        a aVar;
        switch (getItemViewType(i)) {
            case 0:
                h hVar = (h) getItem(i);
                if (view == null || !(view.getTag() instanceof a)) {
                    aVar = null;
                    view = null;
                } else {
                    aVar = (a) view.getTag();
                }
                view3 = view;
                if (view == null) {
                    view3 = this.j.inflate(2131427738, viewGroup, false);
                    aVar = new a(view3);
                }
                view3.setTag(aVar);
                aVar.f2832a.setText(hVar.f2820a);
                break;
            case 1:
                final j jVar = (j) getItem(i);
                if (view == null || !(view.getTag() instanceof c)) {
                    cVar = null;
                    view = null;
                } else {
                    cVar = (c) view.getTag();
                }
                view3 = view;
                if (view == null) {
                    view3 = this.j.inflate(2131427740, viewGroup, false);
                    cVar = new c(view3);
                }
                view3.setTag(cVar);
                cVar.f2835a.setOnClickListener(new View.OnClickListener() { // from class: com.asus.contacts.yellowpage.k.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view4) {
                        if (k.this.f2826b == 0) {
                            Toast.makeText(k.this.h, k.this.h.getString(2131755122), 0).show();
                        } else if (k.this.f2826b != 1) {
                            Log.d("hank", jVar.f2823a + " was clicked !");
                            Intent intent = new Intent(k.this.h, AsusCategoryActivity.class);
                            intent.putExtra("extra_category", jVar.f2823a);
                            intent.putExtra("extra_parent_code", jVar.f2824b);
                            intent.putExtra("extra_is_near_by", false);
                            k.this.h.startActivity(intent);
                        } else if (k.this.c || k.this.d) {
                            Intent intent2 = new Intent(k.this.h, AsusCategoryActivity.class);
                            intent2.putExtra("extra_category", jVar.f2823a);
                            intent2.putExtra("extra_parent_code", jVar.f2824b);
                            intent2.putExtra("extra_is_near_by", true);
                            k.this.h.startActivity(intent2);
                        } else if (Build.VERSION.SDK_INT < 23 || !RequestFineLocationPermissionsAcitvity.startPermissionActivity(k.this.h, false)) {
                            k.this.i.getFragmentManager().beginTransaction();
                            if (k.this.i.getFragmentManager().findFragmentByTag(k.this.h.getResources().getString(2131755612)) == null) {
                                m.a("event_location_service_unavailable").show(k.this.i.getFragmentManager(), k.this.h.getResources().getString(2131755612));
                            }
                        }
                    }
                });
                cVar.c.setText(jVar.f2823a);
                String str = jVar.c;
                if (str == null && TextUtils.isEmpty(str)) {
                    cVar.f2836b.setOnClickListener(null);
                    cVar.d.setVisibility(8);
                    cVar.f.setVisibility(8);
                    break;
                } else {
                    cVar.f2836b.setOnClickListener(new View.OnClickListener() { // from class: com.asus.contacts.yellowpage.k.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            if (k.this.f2826b == 0) {
                                Toast.makeText(k.this.h, k.this.h.getString(2131755122), 0).show();
                            } else if (k.this.f2826b != 1) {
                                Log.d("hank", jVar.c + " was clicked !");
                                Intent intent = new Intent(k.this.h, AsusCategoryActivity.class);
                                intent.putExtra("extra_category", jVar.c);
                                intent.putExtra("extra_parent_code", jVar.d);
                                intent.putExtra("extra_is_near_by", false);
                                k.this.h.startActivity(intent);
                            } else if (k.this.c || k.this.d) {
                                Intent intent2 = new Intent(k.this.h, AsusCategoryActivity.class);
                                intent2.putExtra("extra_category", jVar.c);
                                intent2.putExtra("extra_parent_code", jVar.d);
                                intent2.putExtra("extra_is_near_by", true);
                                k.this.h.startActivity(intent2);
                            } else if (Build.VERSION.SDK_INT < 23 || !RequestFineLocationPermissionsAcitvity.startPermissionActivity(k.this.h, false)) {
                                k.this.i.getFragmentManager().beginTransaction();
                                if (k.this.i.getFragmentManager().findFragmentByTag(k.this.h.getResources().getString(2131755612)) == null) {
                                    m.a("event_location_service_unavailable").show(k.this.i.getFragmentManager(), k.this.h.getResources().getString(2131755612));
                                }
                            }
                        }
                    });
                    cVar.d.setVisibility(0);
                    cVar.d.setText(str);
                    cVar.f.setVisibility(0);
                    break;
                }
                break;
            case 2:
                i iVar = (i) getItem(i);
                if (view == null || !(view.getTag() instanceof b)) {
                    bVar = null;
                    view2 = null;
                } else {
                    bVar = (b) view.getTag();
                    view2 = view;
                }
                View view4 = view2;
                if (view2 == null) {
                    view4 = this.j.inflate(2131427739, viewGroup, false);
                    bVar = new b(view4);
                }
                view4.setTag(bVar);
                int i2 = iVar.f2821a;
                int i3 = 0;
                while (i3 < i2) {
                    bVar.f2834b[i3].setImageResource((i3 < 0 || i3 >= 4) ? 0 : iVar.f2822b[i3]);
                    bVar.c[i3].setText(iVar.a(i3));
                    String[] strArr = new String[iVar.d ? 3 : 2];
                    strArr[0] = iVar.a(i3);
                    strArr[1] = (i3 < 0 || i3 >= 4) ? null : iVar.c[i3];
                    if (iVar.d) {
                        strArr[2] = "1";
                    }
                    bVar.f2833a[i3].setTag(strArr);
                    bVar.f2833a[i3].setVisibility(0);
                    bVar.f2833a[i3].setOnClickListener(this.k);
                    i3++;
                }
                int i4 = i2;
                while (true) {
                    view3 = view4;
                    if (i4 >= 4) {
                        break;
                    } else {
                        bVar.f2833a[i4].setVisibility(4);
                        i4++;
                    }
                }
                break;
            default:
                throw new IllegalStateException("Invalid view type ID " + getItemViewType(i));
        }
        return view3;
    }
}
