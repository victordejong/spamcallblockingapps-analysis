package com.tmobile.services.nameid.p007ui;

import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.material.tabs.TabLayout;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.LogUtil;
/* renamed from: com.tmobile.services.nameid.ui.UIAnalyticConfigurator */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/UIAnalyticConfigurator.class */
public class UIAnalyticConfigurator {

    /* renamed from: a */
    private static UIAnalyticConfigurator f13849a;

    /* renamed from: b */
    private static String f13850b = "UIAnalyticConfigurator#";

    /* renamed from: c */
    private static int f13851c = ViewConfiguration.getLongPressTimeout();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.ui.UIAnalyticConfigurator$AnalyticOnTapListener */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/UIAnalyticConfigurator$AnalyticOnTapListener.class */
    public class AnalyticOnTapListener implements View.OnTouchListener {

        /* renamed from: f */
        private final String f13852f = UIAnalyticConfigurator.f13850b + "AnalyticOnTapListener#";

        /* renamed from: g */
        String f13853g;

        public AnalyticOnTapListener(UIAnalyticConfigurator uIAnalyticConfigurator, String str) {
            this.f13853g = "";
            this.f13853g = str;
        }

        /* renamed from: a */
        private void m6236a(View view, MotionEvent motionEvent) {
            LogUtil.m5643d(this.f13852f + "onTouch", "View class: " + view.getClass().getSimpleName());
            if (motionEvent.getAction() == 0) {
                AnalyticsWrapper.m5865o("Tap", this.f13853g);
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (this.f13853g.isEmpty() && (view instanceof NameIDUIComponent)) {
                this.f13853g = ((NameIDUIComponent) view).getAnalyticMessage();
            }
            if (!this.f13853g.isEmpty()) {
                m6236a(view, motionEvent);
            }
            return view.onTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.ui.UIAnalyticConfigurator$AnalyticOnTouchListener */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/UIAnalyticConfigurator$AnalyticOnTouchListener.class */
    public class AnalyticOnTouchListener implements View.OnTouchListener {

        /* renamed from: g */
        String f13855g;

        /* renamed from: f */
        private final String f13854f = UIAnalyticConfigurator.f13850b + "AnalyticOnTouchListener#";

        /* renamed from: h */
        long f13856h = 0;

        public AnalyticOnTouchListener(UIAnalyticConfigurator uIAnalyticConfigurator, String str) {
            this.f13855g = "";
            this.f13855g = str;
        }

        /* renamed from: a */
        private void m6235a(View view, MotionEvent motionEvent) {
            LogUtil.m5643d(this.f13854f + "logTouchEvent", "View class: " + view.getClass().getSimpleName());
            if (motionEvent.getAction() == 0) {
                this.f13856h = System.currentTimeMillis();
            } else if (motionEvent.getAction() != 1) {
            } else {
                if (System.currentTimeMillis() - this.f13856h > UIAnalyticConfigurator.f13851c) {
                    AnalyticsWrapper.m5865o("Long Press", this.f13855g);
                } else {
                    AnalyticsWrapper.m5865o("Tap", this.f13855g);
                }
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (this.f13855g.isEmpty() && (view instanceof NameIDUIComponent)) {
                this.f13855g = ((NameIDUIComponent) view).getAnalyticMessage();
            }
            if (!this.f13855g.isEmpty()) {
                m6235a(view, motionEvent);
            }
            return view.onTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static String m6249c(NameIDButton nameIDButton) {
        try {
            return nameIDButton.getResources().getResourceEntryName(nameIDButton.getId());
        } catch (Resources.NotFoundException | NullPointerException e) {
            LogUtil.m5631p(f13850b + "getAnalyticMessage(NameIDButton)", "Resource name could not be retrieved. " + e.toString());
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static String m6248d(NameIDCardView nameIDCardView) {
        try {
            return nameIDCardView.getResources().getResourceEntryName(nameIDCardView.getId());
        } catch (Resources.NotFoundException | NullPointerException e) {
            LogUtil.m5631p(f13850b + "getAnalyticMessage(NameIDCardView)", "Resource name could not be retrieved. " + e.toString());
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static String m6247e(NameIDFloatingActionButton nameIDFloatingActionButton) {
        try {
            return nameIDFloatingActionButton.getResources().getResourceEntryName(nameIDFloatingActionButton.getId());
        } catch (Resources.NotFoundException | NullPointerException e) {
            LogUtil.m5631p(f13850b + "getAnalyticMessage(NameIDFloatingActionButton)", "Resource name could not be retrieved. " + e.toString());
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static String m6246f(NameIDImageButton nameIDImageButton) {
        try {
            return nameIDImageButton.getResources().getResourceEntryName(nameIDImageButton.getId());
        } catch (Resources.NotFoundException | NullPointerException e) {
            LogUtil.m5631p(f13850b + "getAnalyticMessage(NameIDImageButton)", "Resource name could not be retrieved. " + e.toString());
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static String m6245g(NameIDRadioButton nameIDRadioButton) {
        try {
            return nameIDRadioButton.getResources().getResourceEntryName(nameIDRadioButton.getId());
        } catch (Resources.NotFoundException | NullPointerException e) {
            LogUtil.m5631p(f13850b + "getAnalyticMessage(NameIDRadioButton)", "Resource name could not be retrieved. " + e.toString());
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static String m6244h(NameIDSquareButton nameIDSquareButton) {
        try {
            return nameIDSquareButton.getResources().getResourceEntryName(nameIDSquareButton.getId());
        } catch (Resources.NotFoundException | NullPointerException e) {
            LogUtil.m5631p(f13850b + "getAnalyticMessage(NameIDButton)", "Resource name could not be retrieved. " + e.toString());
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static String m6243i(NameIDSwitch nameIDSwitch) {
        try {
            return nameIDSwitch.getResources().getResourceEntryName(nameIDSwitch.getId());
        } catch (Resources.NotFoundException | NullPointerException e) {
            LogUtil.m5631p(f13850b + "getAnalyticMessage(NameIDSwitch)", "Resource name could not be retrieved. " + e.toString());
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static String m6242j(NameIDTextView nameIDTextView) {
        try {
            return nameIDTextView.getResources().getResourceEntryName(nameIDTextView.getId());
        } catch (Resources.NotFoundException | NullPointerException e) {
            LogUtil.m5631p(f13850b + "getAnalyticMessage(NameIDTextView)", "Resource name could not be retrieved. " + e.toString());
            return "";
        }
    }

    /* renamed from: k */
    public static UIAnalyticConfigurator m6241k() {
        if (f13849a == null) {
            f13849a = new UIAnalyticConfigurator();
        }
        return f13849a;
    }

    /* renamed from: l */
    public static ViewGroup m6240l(TabLayout tabLayout) {
        ViewGroup viewGroup = (ViewGroup) tabLayout.getChildAt(0);
        if (viewGroup instanceof LinearLayout) {
            return viewGroup;
        }
        LogUtil.m5631p(f13850b + "getTabContainer", "Failed to retrieve a SlidingTabStrip from TabLayout.");
        return null;
    }

    /* renamed from: n */
    public static void m6238n(ViewGroup viewGroup, int i, String str) {
        m6241k().m6239m(str, viewGroup.getChildAt(i));
    }

    /* renamed from: m */
    public void m6239m(String str, View view) {
        if (str.isEmpty()) {
            LogUtil.m5643d(f13850b + "setup", "Adding touch listener to view with message deferred.");
        }
        if (view != null) {
            view.setOnTouchListener(new AnalyticOnTouchListener(this, str));
            return;
        }
        LogUtil.m5631p(f13850b + "setup", "View must be non-null. Skipping analytic setup.");
    }

    /* renamed from: o */
    public void m6237o(String str, View view) {
        if (str.isEmpty()) {
            LogUtil.m5643d(f13850b + "setupTapOnly", "Adding touch listener to view with message deferred.");
        } else {
            LogUtil.m5643d(f13850b + "setupTapOnly", "Adding touch listener to view with message: " + str);
        }
        if (view != null) {
            view.setOnTouchListener(new AnalyticOnTapListener(this, str));
            return;
        }
        LogUtil.m5631p(f13850b + "setupTapOnly", "View must be non-null. Skipping analytic setup.");
    }
}
