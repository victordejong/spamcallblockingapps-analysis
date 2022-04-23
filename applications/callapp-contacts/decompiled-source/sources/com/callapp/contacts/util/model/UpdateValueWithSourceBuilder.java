package com.callapp.contacts.util.model;

import com.callapp.common.model.json.JSONDataAndSource;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.ReflectionUtils;
import com.facebook.ads.AdError;
import java.util.Collection;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/UpdateValueWithSourceBuilder.class */
public class UpdateValueWithSourceBuilder<T> extends UpdateFieldBuilder<Set<JSONDataAndSource<T>>> {
    /* JADX WARN: Multi-variable type inference failed */
    public UpdateValueWithSourceBuilder(ContactData contactData, ContactField contactField, Set<JSONDataAndSource<T>> set) {
        super(contactData, contactField);
        this.value = set;
    }

    public static int convertDataSourceToSrcInt(DataSource dataSource) {
        if (dataSource == DataSource.device) {
            return 1000;
        }
        if (dataSource.dbCode > 0) {
            return dataSource.dbCode;
        }
        if (dataSource == DataSource.genome) {
            return 1001;
        }
        if (dataSource == DataSource.yahooLocal) {
            return 1003;
        }
        if (dataSource == DataSource.googlePlaces) {
            return AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        }
        if (dataSource == DataSource.gravatar) {
            return 1009;
        }
        if (dataSource == DataSource.chLocal) {
            return 1016;
        }
        if (dataSource == DataSource.notificationTelegram) {
            return 1015;
        }
        if (dataSource == DataSource.notificationViber) {
            return 1014;
        }
        if (dataSource == DataSource.notificationWhatsApp) {
            return 1013;
        }
        return dataSource == DataSource.auPersonLookup ? 1017 : 0;
    }

    public static DataSource convertSrcIntToDataSource(int i) {
        DataSource dataSource;
        if (i != 1009) {
            switch (i) {
                case 1000:
                    dataSource = DataSource.device;
                    break;
                case 1001:
                    dataSource = DataSource.genome;
                    break;
                case AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE /* 1002 */:
                    dataSource = DataSource.googlePlaces;
                    break;
                case 1003:
                    dataSource = DataSource.yahooLocal;
                    break;
                default:
                    switch (i) {
                        case 1013:
                            dataSource = DataSource.notificationWhatsApp;
                            break;
                        case 1014:
                            dataSource = DataSource.notificationViber;
                            break;
                        case 1015:
                            dataSource = DataSource.notificationTelegram;
                            break;
                        case 1016:
                            dataSource = DataSource.chLocal;
                            break;
                        case 1017:
                            dataSource = DataSource.auPersonLookup;
                            break;
                        default:
                            dataSource = DataSource.getDataSource(i);
                            break;
                    }
            }
        } else {
            dataSource = DataSource.gravatar;
        }
        DataSource dataSource2 = dataSource;
        if (dataSource == null) {
            dataSource2 = DataSource.unknown;
        }
        return dataSource2;
    }

    @Override // com.callapp.contacts.util.model.UpdateFieldBuilder
    public boolean execute() {
        throw new UnsupportedOperationException("execute()");
    }

    @Override // com.callapp.contacts.util.model.UpdateFieldBuilder
    public UpdateValueWithSourceBuilder useField(Object obj, String str, DataSource dataSource) {
        if (obj != null) {
            if (this.contact.isOnlySure() && !this.contact.isSure(dataSource)) {
                return this;
            }
            Object a2 = ReflectionUtils.a(obj, str);
            if (a2 instanceof Collection) {
                for (Object obj2 : (Collection) a2) {
                    ((Set) this.value).add(new JSONDataAndSource(convertDataSourceToSrcInt(dataSource), obj2));
                }
            } else if (a2 != null) {
                ((Set) this.value).add(new JSONDataAndSource(convertDataSourceToSrcInt(dataSource), a2));
            }
        }
        return this;
    }
}
