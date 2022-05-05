package com.scand.realmbrowser.breadcrumbs;

import android.content.Context;
import android.graphics.Color;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.scand.realmbrowser.C1506R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/breadcrumbs/BreadCrumbsView.class */
public class BreadCrumbsView extends LinearLayout {

    /* renamed from: l */
    private static final int f12533l = C1506R.style.realm_browser_database_bread_crumb_style;

    /* renamed from: m */
    private static final int f12534m = Color.rgb(148, 148, 148);

    /* renamed from: n */
    private static final int f12535n = Color.rgb(255, 255, 255);

    /* renamed from: f */
    private int f12536f;

    /* renamed from: g */
    private int f12537g;

    /* renamed from: h */
    private List<StateHolder> f12538h;

    /* renamed from: i */
    private IOnBreadCrumbListener f12539i;

    /* renamed from: j */
    private Context f12540j;

    /* renamed from: k */
    private View.OnClickListener f12541k = new View.OnClickListener() { // from class: com.scand.realmbrowser.breadcrumbs.BreadCrumbsView.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            BreadCrumbsView.this.m7700c(intValue == -1 ? (StateHolder) BreadCrumbsView.this.f12538h.get(BreadCrumbsView.this.f12538h.size() - 2) : (StateHolder) BreadCrumbsView.this.f12538h.get(intValue));
        }
    };

    public BreadCrumbsView(Context context) {
        super(context);
        m7694i(context);
    }

    public BreadCrumbsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m7694i(context);
    }

    public BreadCrumbsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m7694i(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m7700c(StateHolder stateHolder) {
        int indexOf = this.f12538h.indexOf(stateHolder);
        int size = this.f12538h.size();
        if (size > indexOf) {
            this.f12538h = this.f12538h.subList(0, indexOf + 1);
            m7693j(this.f12537g);
            IOnBreadCrumbListener iOnBreadCrumbListener = this.f12539i;
            if (iOnBreadCrumbListener != null) {
                iOnBreadCrumbListener.mo7692u(stateHolder);
                return;
            }
            return;
        }
        throw new IllegalArgumentException(String.format("BreadcrumbsView: count = %d, position = %d", Integer.valueOf(size), Integer.valueOf(indexOf)));
    }

    /* renamed from: e */
    private int m7698e() {
        measure(0, 0);
        return getMeasuredWidth();
    }

    /* renamed from: g */
    private TextView m7696g(String str, int i, int i2) {
        int i3;
        TextView textView = new TextView(this.f12540j);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        textView.setPadding(this.f12536f, 0, 0, 0);
        textView.setGravity(16);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        if (this.f12540j.getResources().getResourceName(f12533l) != null) {
            textView.setTextAppearance(this.f12540j, f12533l);
            textView.setText(Html.fromHtml(str));
        } else {
            textView.setText(Html.fromHtml("<u>" + str + "</u>"));
        }
        textView.setOnClickListener(this.f12541k);
        textView.setTag(Integer.valueOf(i));
        if (i != i2 - 1) {
            textView.setCompoundDrawablesWithIntrinsicBounds(0, 0, C1506R.C1508drawable.realm_browser_ic_breadcrumb, 0);
            textView.setCompoundDrawablePadding(this.f12536f);
            i3 = f12534m;
        } else {
            i3 = f12535n;
        }
        textView.setTextColor(i3);
        textView.setGravity(16);
        return textView;
    }

    /* renamed from: h */
    private String m7695h(String str) {
        String[] split = str.split("\\.");
        if (split.length > 0) {
            str = split[split.length - 1];
        }
        return str;
    }

    /* renamed from: i */
    private void m7694i(Context context) {
        this.f12540j = context;
        this.f12538h = new ArrayList();
        setOrientation(0);
        setGravity(16);
        this.f12536f = (int) TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics());
    }

    /* renamed from: j */
    private void m7693j(int i) {
        removeAllViews();
        List<StateHolder> list = this.f12538h;
        if (!(list == null || list.isEmpty())) {
            int size = this.f12538h.size();
            addView(m7696g(m7695h(this.f12538h.get(0).m7691a()), 0, size));
            for (int i2 = 1; i2 < size; i2++) {
                addView(m7696g(m7695h(this.f12538h.get(i2).m7691a()), i2, size));
                if (m7698e() > i) {
                    removeViews(1, getChildCount() - 2);
                    addView(m7696g("...", -1, size), 1);
                }
            }
        }
    }

    /* renamed from: d */
    public void m7699d(StateHolder stateHolder) {
        this.f12538h.add(stateHolder);
        m7693j(this.f12537g);
    }

    /* renamed from: f */
    public void m7697f() {
        this.f12538h.clear();
        m7693j(this.f12537g);
    }

    public List<StateHolder> getCrumbStates() {
        return this.f12538h;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f12537g = i;
        m7693j(i);
    }

    public void setCrumbStates(List<StateHolder> list) {
        List<StateHolder> list2;
        this.f12538h = list;
        m7693j(this.f12537g);
        if (this.f12539i != null && (list2 = this.f12538h) != null && !list2.isEmpty()) {
            IOnBreadCrumbListener iOnBreadCrumbListener = this.f12539i;
            List<StateHolder> list3 = this.f12538h;
            iOnBreadCrumbListener.mo7692u(list3.get(list3.size() - 1));
        }
    }

    public void setOnCrumbClickListener(IOnBreadCrumbListener iOnBreadCrumbListener) {
        this.f12539i = iOnBreadCrumbListener;
    }
}
