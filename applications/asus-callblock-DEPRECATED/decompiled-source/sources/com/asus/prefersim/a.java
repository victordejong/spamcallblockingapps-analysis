package com.asus.prefersim;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.AsyncTask;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import com.android.contacts.activities.ContactDetailActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.detail.ContactDetailFragment;
import com.android.contacts.simcardmanage.b;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.ImplicitIntentsUtil;
import java.net.URLDecoder;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/prefersim/a.class */
public final class a extends AsyncTask<Object, Void, Integer> {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<String> f2941a;

    /* renamed from: b  reason: collision with root package name */
    ContactDetailFragment f2942b;
    private Intent c;
    private Context d;
    private int e;
    private int f;
    private int g;
    private MenuItem h;
    private MenuItem i;
    private Activity j;
    private Menu k;

    public a(int i) {
        this.e = -1;
        this.e = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Integer doInBackground(Object... objArr) {
        int i;
        Exception e;
        int i2;
        int i3 = 1;
        switch (this.e) {
            case 0:
            case 8:
                this.c = (Intent) objArr[1];
                this.d = (Context) objArr[0];
                try {
                    String decode = URLDecoder.decode(this.c.getDataString(), "US-ASCII");
                    i = Integer.valueOf(c.a(this.d, decode.substring(decode.indexOf(58) + 1)));
                    break;
                } catch (Exception e2) {
                    Log.d("PreferSimAsyncTask", "Type " + this.e + " Prfer SIM Call URLDecoder error: " + e2.toString());
                    i = -1;
                    break;
                }
            case 1:
                this.h = (MenuItem) objArr[2];
                this.i = (MenuItem) objArr[3];
                i = Integer.valueOf(c.a((Context) objArr[0], (String) objArr[1]));
                break;
            case 2:
                Cursor cursor = null;
                Cursor cursor2 = null;
                try {
                    try {
                        Cursor b2 = c.b((Context) objArr[0], ((Long) objArr[1]).longValue());
                        this.g = -1;
                        this.h = (MenuItem) objArr[2];
                        cursor2 = b2;
                        this.i = (MenuItem) objArr[3];
                        int i4 = 1;
                        if (b2 != null) {
                            i4 = 1;
                            try {
                                if (b2.moveToFirst()) {
                                    i4 = b2.getInt(b2.getColumnIndex("isdiff"));
                                    i3 = i4;
                                    this.g = b2.getInt(b2.getColumnIndex("sim"));
                                }
                            } catch (Exception e3) {
                                e = e3;
                                cursor2 = b2;
                                cursor = cursor2;
                                Log.d("PreferSimAsyncTask", " onBackgroud SET_CONTACT_CALL_SIM1_SIM2_MENU_VISIBLE error: " + e.toString());
                                i2 = i3;
                                if (cursor2 != null) {
                                    cursor2.close();
                                    i2 = i3;
                                }
                                i = Integer.valueOf(i2);
                                return i;
                            }
                        }
                        i2 = i4;
                        if (b2 != null) {
                            b2.close();
                            i2 = i4;
                        }
                    } catch (Throwable th) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Exception e4) {
                    e = e4;
                    i3 = -10;
                }
                i = Integer.valueOf(i2);
            case 3:
            default:
                i = -10;
                break;
            case 4:
                this.j = (Activity) objArr[0];
                if (this.f2941a == null) {
                    i = -10;
                    break;
                } else {
                    i = Integer.valueOf(c.a(this.j, this.f2941a, ((Long) objArr[1]).longValue()));
                    break;
                }
            case 5:
                this.j = (Activity) objArr[0];
                this.f = ((Integer) objArr[2]).intValue();
                if (this.f2941a == null) {
                    i = -10;
                    break;
                } else {
                    i = Integer.valueOf(c.a(this.j, ((Long) objArr[1]).longValue(), this.f2941a, this.f) ? 1 : 0);
                    break;
                }
            case 6:
                this.d = (Context) objArr[0];
                this.k = (Menu) objArr[2];
                i = Integer.valueOf(c.a(this.d, (String) objArr[1]));
                break;
            case 7:
                if (this.f2941a != null) {
                    c.b((Context) objArr[0], this.f2941a, ((Long) objArr[1]).longValue());
                } else {
                    c.c((Context) objArr[0], ((Long) objArr[1]).longValue());
                }
                i = -9;
                break;
        }
        return i;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Integer num) {
        Integer num2 = num;
        if (num2.intValue() == -10) {
            Log.d("PreferSimAsyncTask", "PreferSimAsyncTask get ERROR RESULT: runType " + this.e);
            return;
        }
        switch (this.e) {
            case 0:
            case 8:
                if (num2.intValue() >= 0) {
                    this.c.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", b.h(this.d, num2.intValue()));
                }
                if (this.e == 0) {
                    CallUtil.startActivityWithErrorToast(this.d, this.c);
                    return;
                } else {
                    ImplicitIntentsUtil.startActivityOutsideApp(this.d, this.c, false);
                    return;
                }
            case 1:
                if (num2.intValue() == 0) {
                    this.i.setVisible(false);
                    return;
                } else if (num2.intValue() == 1) {
                    this.h.setVisible(false);
                    return;
                } else {
                    return;
                }
            case 2:
                if (num2.intValue() != 0) {
                    return;
                }
                if (this.g == 0) {
                    this.i.setVisible(false);
                    return;
                } else {
                    this.h.setVisible(false);
                    return;
                }
            case 3:
            case 7:
            default:
                return;
            case 4:
                if (num2.intValue() > 0 && this.j != null) {
                    if (this.j instanceof ContactDetailActivity) {
                        ((ContactDetailActivity) this.j).getContactDetailLayoutController().getContactDetailFragment().clearPreferSimHashMap();
                        ((ContactDetailActivity) this.j).getContactDetailLayoutController().getContactDetailFragment().updateAdapter();
                    }
                    if (this.j instanceof MainDialtactsActivity) {
                        ((MainDialtactsActivity) this.j).getDefaultContactBrowseListFragment().E.getContactDetailFragment().clearPreferSimHashMap();
                        ((MainDialtactsActivity) this.j).getDefaultContactBrowseListFragment().E.getContactDetailFragment().updateAdapter();
                    }
                    Toast.makeText(this.j, this.j.getString(2131755388), 0).show();
                    return;
                }
                return;
            case 5:
                if (num2.intValue() == 1) {
                    this.f2942b.clearPreferSimHashMap();
                    this.f2942b.updateAdapter();
                    Toast.makeText(this.j, this.j.getResources().getString(2131756100, this.f == 0 ? this.j.getString(2131756130) : this.j.getString(2131756131)), 0).show();
                    return;
                }
                return;
            case 6:
                if (num2.intValue() == 0) {
                    this.k.add(0, 4, 0, this.d.getString(2131756105, this.d.getString(2131756135)));
                    this.k.add(0, 5, 0, this.d.getString(2131755387));
                    return;
                } else if (num2.intValue() == 1) {
                    this.k.add(0, 3, 0, this.d.getString(2131756105, this.d.getString(2131756134)));
                    this.k.add(0, 5, 0, this.d.getString(2131755387));
                    return;
                } else {
                    this.k.add(0, 3, 0, this.d.getString(2131756105, this.d.getString(2131756134)));
                    this.k.add(0, 4, 0, this.d.getString(2131756105, this.d.getString(2131756135)));
                    return;
                }
        }
    }
}
