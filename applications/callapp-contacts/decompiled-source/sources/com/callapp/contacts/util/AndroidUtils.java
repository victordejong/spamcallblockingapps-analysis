package com.callapp.contacts.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.view.View;
import android.view.Window;
import androidx.appcompat.view.b;
import androidx.appcompat.view.e;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.framework.util.CollectionUtils;
import com.google.api.client.a.r;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/AndroidUtils.class */
public class AndroidUtils {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/AndroidUtils$FieldsChangedHandler.class */
    public static class FieldsChangedHandler<T> {

        /* renamed from: a  reason: collision with root package name */
        public final BitSet f15846a;

        /* renamed from: b  reason: collision with root package name */
        private final List<T> f15847b;

        public FieldsChangedHandler(List<T> list) {
            ArrayList arrayList = list instanceof Collection ? new ArrayList(list) : r.a(list.iterator());
            this.f15847b = arrayList;
            this.f15846a = new BitSet(arrayList.size());
        }

        @SafeVarargs
        public FieldsChangedHandler(T... tArr) {
            List<T> asList = Arrays.asList(tArr);
            this.f15847b = asList;
            this.f15846a = new BitSet(asList.size());
        }

        public static <E extends Enum<E>> List<E> a(Class<E> cls, Intent intent) {
            Bundle extras;
            ArrayList arrayList = new ArrayList();
            if (!(intent == null || (extras = intent.getExtras()) == null)) {
                Set<String> keySet = extras.keySet();
                if (CollectionUtils.b(keySet)) {
                    for (String str : keySet) {
                        try {
                            arrayList.add(Enum.valueOf(cls, str));
                        } catch (IllegalArgumentException e) {
                        }
                    }
                }
            }
            return arrayList;
        }

        public final boolean a(Intent intent) {
            boolean z = false;
            boolean z2 = false;
            if (isAnyFieldChanged()) {
                Iterator<T> it2 = this.f15847b.iterator();
                while (true) {
                    z = z2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    T next = it2.next();
                    if (a((FieldsChangedHandler<T>) next)) {
                        intent.putExtra(next.toString(), true);
                        z2 |= true;
                    }
                }
            }
            return z;
        }

        public final boolean a(T t) {
            int indexOf = this.f15847b.indexOf(t);
            return indexOf >= 0 && this.f15846a.get(indexOf);
        }

        public boolean isAnyFieldChanged() {
            return !this.f15846a.isEmpty();
        }

        public void setFieldChanged(T t) {
            int indexOf = this.f15847b.indexOf(t);
            if (indexOf >= 0) {
                this.f15846a.set(indexOf, true);
            }
        }
    }

    public static String a(Intent intent) {
        if (intent == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder("action: ");
        sb.append(intent.getAction());
        sb.append(" data: ");
        sb.append(intent.getDataString());
        sb.append(" extras: ");
        try {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                for (String str : extras.keySet()) {
                    sb.append(str);
                    sb.append("=");
                    sb.append(extras.get(str));
                    sb.append(StringUtils.SPACE);
                }
            }
        } catch (Exception e) {
        }
        return sb.toString();
    }

    public static void a(Activity activity) {
        Window window;
        View decorView;
        if (Prefs.f15236d.get().booleanValue() && (window = activity.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            a(decorView, 1);
        }
    }

    public static void a(Context context, String str) {
        new Task() { // from class: com.callapp.contacts.util.AndroidUtils.1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                CallAppApplication.get().startActivity(new Intent(CallAppApplication.get(), ContactsListActivity.class).addFlags(268468224));
                Process.killProcess(Process.myPid());
            }
        }.schedule(2000);
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        if (str != null) {
            simpleProgressDialog.setMessage(str);
        }
        simpleProgressDialog.setCancelable(false);
        PopupManager.get().a(context, simpleProgressDialog);
    }

    public static void a(Looper looper) {
        Handler handler = new Handler(looper) { // from class: com.callapp.contacts.util.AndroidUtils.2
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                sendMessageDelayed(obtainMessage(), 1000L);
            }
        };
        handler.sendMessageDelayed(handler.obtainMessage(), 1000L);
    }

    public static void a(View view, int i) {
        if (Prefs.f15236d.get().booleanValue() && view != null) {
            try {
                view.performHapticFeedback(i);
            } catch (RuntimeException e) {
            }
        }
    }

    public static boolean a(Context context) {
        try {
            return a(context.getCacheDir());
        } catch (Exception e) {
            CLog.a(AndroidUtils.class, e);
            return false;
        }
    }

    private static boolean a(File file) {
        if (file != null && file.isDirectory()) {
            for (String str : file.list()) {
                if (!a(new File(file, str))) {
                    return false;
                }
            }
            return file.delete();
        } else if (file == null || !file.isFile()) {
            return false;
        } else {
            return file.delete();
        }
    }

    public static void setActionModeBackgroundColor(b bVar) {
        try {
            int color = ThemeUtils.getColor(2131099786);
            Field declaredField = e.class.getDeclaredField("a");
            declaredField.setAccessible(true);
            ((View) declaredField.get((e) bVar)).setBackground(new ColorDrawable(color));
        } catch (Throwable th) {
        }
    }
}
