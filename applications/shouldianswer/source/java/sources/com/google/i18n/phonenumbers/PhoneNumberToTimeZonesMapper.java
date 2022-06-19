package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper.class */
public class PhoneNumberToTimeZonesMapper {
    private static final String MAPPING_DATA_DIRECTORY = "/com/google/i18n/phonenumbers/timezones/data/";
    private static final String MAPPING_DATA_FILE_NAME = "map_data";
    private static final String UNKNOWN_TIMEZONE = "Etc/Unknown";
    static final List<String> UNKNOWN_TIME_ZONE_LIST = new ArrayList(1);
    private static final Logger logger = Logger.getLogger(PhoneNumberToTimeZonesMapper.class.getName());
    private PrefixTimeZonesMap prefixTimeZonesMap;

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder.class */
    private static class LazyHolder {
        private static final PhoneNumberToTimeZonesMapper INSTANCE = new PhoneNumberToTimeZonesMapper(PhoneNumberToTimeZonesMapper.loadPrefixTimeZonesMapFromFile("/com/google/i18n/phonenumbers/timezones/data/map_data"));

        private LazyHolder() {
        }
    }

    static {
        UNKNOWN_TIME_ZONE_LIST.add(UNKNOWN_TIMEZONE);
    }

    private PhoneNumberToTimeZonesMapper(PrefixTimeZonesMap prefixTimeZonesMap) {
        this.prefixTimeZonesMap = null;
        this.prefixTimeZonesMap = prefixTimeZonesMap;
    }

    PhoneNumberToTimeZonesMapper(String str) {
        this.prefixTimeZonesMap = null;
        this.prefixTimeZonesMap = loadPrefixTimeZonesMapFromFile(str + MAPPING_DATA_FILE_NAME);
    }

    private static void close(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                logger.log(Level.WARNING, e.toString());
            }
        }
    }

    private List<String> getCountryLevelTimeZonesforNumber(Phonenumber.PhoneNumber phoneNumber) {
        List<String> lookupCountryLevelTimeZonesForNumber = this.prefixTimeZonesMap.lookupCountryLevelTimeZonesForNumber(phoneNumber);
        List<String> list = lookupCountryLevelTimeZonesForNumber;
        if (lookupCountryLevelTimeZonesForNumber.isEmpty()) {
            list = UNKNOWN_TIME_ZONE_LIST;
        }
        return Collections.unmodifiableList(list);
    }

    public static PhoneNumberToTimeZonesMapper getInstance() {
        PhoneNumberToTimeZonesMapper phoneNumberToTimeZonesMapper;
        synchronized (PhoneNumberToTimeZonesMapper.class) {
            try {
                phoneNumberToTimeZonesMapper = LazyHolder.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneNumberToTimeZonesMapper;
    }

    private List<String> getTimeZonesForGeocodableNumber(Phonenumber.PhoneNumber phoneNumber) {
        List<String> lookupTimeZonesForNumber = this.prefixTimeZonesMap.lookupTimeZonesForNumber(phoneNumber);
        List<String> list = lookupTimeZonesForNumber;
        if (lookupTimeZonesForNumber.isEmpty()) {
            list = UNKNOWN_TIME_ZONE_LIST;
        }
        return Collections.unmodifiableList(list);
    }

    public static String getUnknownTimeZone() {
        return UNKNOWN_TIMEZONE;
    }

    public static PrefixTimeZonesMap loadPrefixTimeZonesMapFromFile(String str) {
        ObjectInputStream objectInputStream;
        Throwable th;
        IOException e;
        InputStream resourceAsStream = PhoneNumberToTimeZonesMapper.class.getResourceAsStream(str);
        PrefixTimeZonesMap prefixTimeZonesMap = new PrefixTimeZonesMap();
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(resourceAsStream);
            } catch (IOException e2) {
                e = e2;
                objectInputStream = null;
            }
        } catch (Throwable th2) {
            objectInputStream = objectInputStream2;
            th = th2;
        }
        try {
            prefixTimeZonesMap.readExternal(objectInputStream);
            close(objectInputStream);
        } catch (IOException e3) {
            e = e3;
            objectInputStream2 = objectInputStream;
            logger.log(Level.WARNING, e.toString());
            close(objectInputStream);
            return prefixTimeZonesMap;
        } catch (Throwable th3) {
            th = th3;
            close(objectInputStream);
            throw th;
        }
        return prefixTimeZonesMap;
    }

    public List<String> getTimeZonesForGeographicalNumber(Phonenumber.PhoneNumber phoneNumber) {
        return getTimeZonesForGeocodableNumber(phoneNumber);
    }

    public List<String> getTimeZonesForNumber(Phonenumber.PhoneNumber phoneNumber) {
        PhoneNumberUtil.PhoneNumberType numberType = PhoneNumberUtil.getInstance().getNumberType(phoneNumber);
        return numberType == PhoneNumberUtil.PhoneNumberType.UNKNOWN ? UNKNOWN_TIME_ZONE_LIST : !PhoneNumberUtil.getInstance().isNumberGeographical(numberType, phoneNumber.getCountryCode()) ? getCountryLevelTimeZonesforNumber(phoneNumber) : getTimeZonesForGeographicalNumber(phoneNumber);
    }
}
