package com.asus.contacts.yellowpage.utils;

import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/utils/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public int f2888a;

    public e(String str) {
        char c = 65535;
        switch (str.hashCode()) {
            case 1537:
                if (str.equals("01")) {
                    c = 7;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c = 5;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c = 6;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c = 2;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c = '\n';
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c = 1;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c = 4;
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c = 3;
                    break;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    c = 16;
                    break;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    c = 17;
                    break;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    c = 11;
                    break;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    c = '\b';
                    break;
                }
                break;
            case 1571:
                if (str.equals("14")) {
                    c = 15;
                    break;
                }
                break;
            case 1572:
                if (str.equals("15")) {
                    c = 14;
                    break;
                }
                break;
            case 1573:
                if (str.equals("16")) {
                    c = '\r';
                    break;
                }
                break;
            case 1574:
                if (str.equals("17")) {
                    c = '\f';
                    break;
                }
                break;
            case 1575:
                if (str.equals("18")) {
                    c = 20;
                    break;
                }
                break;
            case 1576:
                if (str.equals("19")) {
                    c = '\t';
                    break;
                }
                break;
            case 1598:
                if (str.equals("20")) {
                    c = 21;
                    break;
                }
                break;
            case 1600:
                if (str.equals("22")) {
                    c = 19;
                    break;
                }
                break;
            case 1602:
                if (str.equals("24")) {
                    c = 22;
                    break;
                }
                break;
            case 1604:
                if (str.equals("26")) {
                    c = 18;
                    break;
                }
                break;
            case 1824:
                if (str.equals("99")) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.f2888a = 0;
                return;
            case 1:
                this.f2888a = 1;
                return;
            case 2:
                this.f2888a = 2;
                return;
            case 3:
                this.f2888a = 3;
                return;
            case 4:
                this.f2888a = 4;
                return;
            case 5:
                this.f2888a = 5;
                return;
            case 6:
                this.f2888a = 6;
                return;
            case 7:
                this.f2888a = 7;
                return;
            case '\b':
                this.f2888a = 8;
                return;
            case '\t':
                this.f2888a = 9;
                return;
            case '\n':
                this.f2888a = 10;
                return;
            case 11:
                this.f2888a = 11;
                return;
            case '\f':
                this.f2888a = 12;
                return;
            case '\r':
                this.f2888a = 13;
                return;
            case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
                this.f2888a = 14;
                return;
            case 15:
                this.f2888a = 15;
                return;
            case 16:
                this.f2888a = 16;
                return;
            case 17:
                this.f2888a = 17;
                return;
            case 18:
                this.f2888a = 18;
                return;
            case 19:
                this.f2888a = 19;
                return;
            case 20:
                this.f2888a = 20;
                return;
            case 21:
                this.f2888a = 21;
                return;
            case 22:
                this.f2888a = 22;
                return;
            default:
                return;
        }
    }
}
