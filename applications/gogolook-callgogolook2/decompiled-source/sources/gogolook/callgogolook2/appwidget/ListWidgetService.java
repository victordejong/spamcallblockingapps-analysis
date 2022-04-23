package gogolook.callgogolook2.appwidget;

import android.annotation.TargetApi;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.gson.NumberInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p459j.p460a.p461a0.AbstractC11045d;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p594z4.C14330b;
import p459j.p460a.p582w0.p594z4.EnumC14329a;
@TargetApi(11)
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/appwidget/ListWidgetService.class */
public class ListWidgetService extends RemoteViewsService {

    /* renamed from: a */
    public List<Map<EnumC14329a, String>> f10668a = new ArrayList();

    /* renamed from: gogolook.callgogolook2.appwidget.ListWidgetService$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/appwidget/ListWidgetService$b.class */
    public class C4423b implements RemoteViewsService.RemoteViewsFactory {

        /* renamed from: a */
        public Context f10669a;

        /* renamed from: b */
        public int[] f10670b;

        /* renamed from: c */
        public Set<String> f10671c = new HashSet();

        /* renamed from: gogolook.callgogolook2.appwidget.ListWidgetService$b$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/appwidget/ListWidgetService$b$a.class */
        public class C4424a extends AbstractC4425b {

            /* renamed from: a */
            public final /* synthetic */ String f10673a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4424a(String str) {
                super();
                this.f10673a = str;
            }

            @Override // p459j.p460a.p461a0.AbstractC11045d
            /* renamed from: b */
            public void mo10355b(String str) {
                C4423b.this.m28649a(this.f10673a);
            }
        }

        /* renamed from: gogolook.callgogolook2.appwidget.ListWidgetService$b$b */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/appwidget/ListWidgetService$b$b.class */
        public abstract class AbstractC4425b implements AbstractC11045d {
            public AbstractC4425b(C4423b bVar) {
            }

            @Override // p459j.p460a.p461a0.AbstractC11045d
            /* renamed from: a */
            public void mo10358a(String str) {
            }

            @Override // p459j.p460a.p461a0.AbstractC11045d
            /* renamed from: a */
            public void mo10357a(String str, NumberInfo.ErrorReason errorReason) {
            }

            @Override // p459j.p460a.p461a0.AbstractC11045d
            /* renamed from: a */
            public void mo5580a(String str, NumberInfo.InfoSource infoSource, boolean z) {
            }

            @Override // p459j.p460a.p461a0.AbstractC11045d
            /* renamed from: a */
            public void mo10356a(String str, NumberInfo numberInfo) {
            }
        }

        public C4423b(Context context, Intent intent) {
            this.f10669a = context;
            this.f10670b = intent.getIntArrayExtra("appWidgetIds");
        }

        /* renamed from: a */
        public final void m28649a(String str) {
            if (!this.f10671c.contains(str)) {
                this.f10671c.add(str);
                if (this.f10671c.size() == getCount()) {
                    AppWidgetManager.getInstance(this.f10669a).notifyAppWidgetViewDataChanged(this.f10670b, R$id.widget_listview);
                }
            }
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public int getCount() {
            int size = ListWidgetService.this.f10668a.size();
            if (size >= 15) {
                return 15;
            }
            return size;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public RemoteViews getLoadingView() {
            RemoteViews remoteViews = new RemoteViews(this.f10669a.getPackageName(), (int) R$layout.widget_item);
            remoteViews.setTextViewText(R$id.rowTitle, "");
            remoteViews.setTextViewText(R$id.tv_telecom, "");
            remoteViews.setTextViewText(R$id.rowDetails, "");
            return remoteViews;
        }

        /* JADX WARN: Code restructure failed: missing block: B:68:0x02f4, code lost:
            if (r0.m28231e().contains(gogolook.callgogolook2.gson.RowInfo.MetaphorType.SPOOF) != false) goto L_0x02f7;
         */
        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.widget.RemoteViews getViewAt(int r7) {
            /*
                Method dump skipped, instructions count: 980
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.appwidget.ListWidgetService.C4423b.getViewAt(int):android.widget.RemoteViews");
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public void onCreate() {
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public void onDataSetChanged() {
            boolean z;
            long clearCallingIdentity = Binder.clearCallingIdentity();
            ListWidgetService listWidgetService = ListWidgetService.this;
            listWidgetService.f10668a = listWidgetService.m28654a(this.f10669a);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            int count = getCount();
            int i = count;
            if (count >= 15) {
                i = 15;
            }
            if (this.f10671c != null) {
                HashSet hashSet = new HashSet();
                for (String str : this.f10671c) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= i) {
                            z = false;
                            break;
                        }
                        String str2 = (String) ((Map) ListWidgetService.this.f10668a.get(i2)).get(EnumC14329a.E164NUMBER);
                        if (str == null && str2 == null) {
                            z = true;
                            break;
                        }
                        if (str != null && str.equals(str2)) {
                            z = true;
                            break;
                        }
                        i2++;
                    }
                    if (!z) {
                        hashSet.add(str);
                    }
                }
                this.f10671c.removeAll(hashSet);
            }
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public void onDestroy() {
        }
    }

    /* renamed from: a */
    public String m28655a(int i) {
        return C14206w4.m2225a(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final ArrayList<Map<EnumC14329a, String>> m28654a(Context context) {
        ArrayList arrayList = new ArrayList(C14330b.m1551b().m1558a(context));
        int size = arrayList.size();
        int i = size;
        if (size >= 15) {
            i = 15;
        }
        ArrayList<Map<EnumC14329a, String>> arrayList2 = new ArrayList<>();
        Collections.synchronizedList(arrayList2);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList2.add(arrayList.get(i2));
        }
        return arrayList2;
    }

    @Override // android.widget.RemoteViewsService
    public RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent intent) {
        return new C4423b(getApplicationContext(), intent);
    }
}
