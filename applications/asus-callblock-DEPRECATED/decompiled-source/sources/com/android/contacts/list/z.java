package com.android.contacts.list;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.util.Constants;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f1906a;

    public z(Activity activity) {
        this.f1906a = activity;
    }

    public final ad a(Intent intent) {
        ad adVar = new ad();
        String action = intent.getAction();
        Log.i("ContactsIntentResolver", "Called with action: " + action);
        if ("com.android.contacts.action.LIST_DEFAULT".equals(action)) {
            adVar.f1765b = 10;
        } else if ("com.android.contacts.action.LIST_ALL_CONTACTS".equals(action)) {
            adVar.f1765b = 15;
        } else if ("com.android.contacts.action.LIST_CONTACTS_WITH_PHONES".equals(action)) {
            adVar.f1765b = 17;
        } else if ("com.android.contacts.action.LIST_STARRED".equals(action)) {
            adVar.f1765b = 30;
        } else if ("com.android.contacts.action.LIST_FREQUENT".equals(action)) {
            adVar.f1765b = 40;
        } else if ("com.android.contacts.action.LIST_STREQUENT".equals(action)) {
            adVar.f1765b = 50;
        } else if ("com.android.contacts.action.LIST_GROUP".equals(action)) {
            adVar.f1765b = 20;
        } else if ("android.intent.action.PICK".equals(action)) {
            String resolveType = intent.resolveType(this.f1906a);
            if ("vnd.android.cursor.dir/contact".equals(resolveType)) {
                adVar.f1765b = 60;
            } else if ("vnd.android.cursor.dir/person".equals(resolveType)) {
                adVar.f1765b = 60;
                adVar.h = true;
            } else if ("vnd.android.cursor.dir/phone_v2".equals(resolveType)) {
                adVar.f1765b = 90;
            } else if ("vnd.android.cursor.dir/phone".equals(resolveType)) {
                adVar.f1765b = 90;
                adVar.h = true;
            } else if ("vnd.android.cursor.dir/postal-address_v2".equals(resolveType)) {
                adVar.f1765b = 100;
            } else if ("vnd.android.cursor.dir/postal-address".equals(resolveType)) {
                adVar.f1765b = 100;
                adVar.h = true;
            } else if ("vnd.android.cursor.dir/email_v2".equals(resolveType)) {
                adVar.f1765b = 105;
            }
        } else if ("android.intent.action.CREATE_SHORTCUT".equals(action)) {
            String className = intent.getComponent().getClassName();
            if (className.equals("alias.DialShortcut")) {
                adVar.f1765b = 120;
            } else if (className.equals("alias.MessageShortcut")) {
                adVar.f1765b = 130;
            } else {
                adVar.f1765b = 110;
            }
        } else if ("android.intent.action.GET_CONTENT".equals(action)) {
            String type = intent.getType();
            if ("vnd.android.cursor.item/contact".equals(type)) {
                adVar.f1765b = 70;
            } else if ("vnd.android.cursor.item/phone_v2".equals(type)) {
                adVar.f1765b = 90;
            } else if ("vnd.android.cursor.item/phone".equals(type)) {
                adVar.f1765b = 90;
                adVar.h = true;
            } else if ("vnd.android.cursor.item/postal-address_v2".equals(type)) {
                adVar.f1765b = 100;
            } else if ("vnd.android.cursor.item/postal-address".equals(type)) {
                adVar.f1765b = 100;
                adVar.h = true;
            } else if ("vnd.android.cursor.item/person".equals(type)) {
                adVar.f1765b = 70;
                adVar.h = true;
            }
        } else if ("android.intent.action.INSERT_OR_EDIT".equals(action)) {
            adVar.f1765b = 80;
        } else if ("android.intent.action.SEARCH".equals(action)) {
            String stringExtra = intent.getStringExtra("query");
            String str = stringExtra;
            if (TextUtils.isEmpty(stringExtra)) {
                str = intent.getStringExtra("phone");
            }
            String str2 = str;
            if (TextUtils.isEmpty(str)) {
                str2 = intent.getStringExtra("email");
            }
            adVar.f = str2;
            adVar.e = true;
        } else if ("android.intent.action.VIEW".equals(action)) {
            String resolveType2 = intent.resolveType(this.f1906a);
            if ("vnd.android.cursor.dir/contact".equals(resolveType2) || "vnd.android.cursor.dir/person".equals(resolveType2)) {
                adVar.f1765b = 15;
            } else if (intent.getData() != null && !Constants.SCHEME_TEL.equals(intent.getData().getScheme())) {
                adVar.f1765b = 140;
                adVar.j = intent.getData();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(null);
            }
        } else if ("com.android.contacts.action.FILTER_CONTACTS".equals(action)) {
            adVar.f1765b = 10;
            Bundle extras = intent.getExtras();
            if (extras != null) {
                adVar.f = extras.getString("com.android.contacts.extra.FILTER_TEXT");
                ad adVar2 = (ad) extras.get("originalRequest");
                if (adVar2 != null) {
                    adVar.f1764a = adVar2.f1764a;
                    adVar.f1765b = adVar2.f1765b;
                    adVar.c = adVar2.c;
                    adVar.d = adVar2.d;
                    adVar.e = adVar2.e;
                    adVar.f = adVar2.f;
                    adVar.g = adVar2.g;
                    adVar.h = adVar2.h;
                    adVar.i = adVar2.i;
                    adVar.j = adVar2.j;
                }
            }
            adVar.e = true;
        } else if ("android.provider.Contacts.SEARCH_SUGGESTION_CLICKED".equals(action)) {
            Uri data = intent.getData();
            adVar.f1765b = 140;
            adVar.j = data;
            intent.setAction("android.intent.action.VIEW");
            intent.setData(null);
        } else if ("com.android.contacts.action.GET_MULTIPLE_PHONES".equals(action)) {
            adVar.f1765b = 150;
        } else if ("android.intent.action.MULTI_SELECT_DIALOG_CONTACT_PICKER".equals(action)) {
            if (intent.getExtras() == null || TextUtils.isEmpty(intent.getStringExtra("group_uri"))) {
                adVar.f1765b = 170;
            } else {
                adVar.f1765b = 180;
            }
        }
        try {
            String stringExtra2 = intent.getStringExtra("com.android.contacts.extra.TITLE_EXTRA");
            if (stringExtra2 != null) {
                adVar.d = stringExtra2;
            }
        } catch (Exception e) {
            Log.d("ContactsIntentResolver", "Some Exception happend:" + e.getMessage());
            adVar.d = BuildConfig.FLAVOR;
        }
        return adVar;
    }
}
