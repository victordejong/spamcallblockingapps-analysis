package com.phone.libphone;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/Phonenumber$PhoneNumber.class */
public class Phonenumber$PhoneNumber implements Serializable {
    private static final long serialVersionUID = 1;
    private boolean hasCountryCode;
    private boolean hasCountryCodeSource;
    private boolean hasExtension;
    private boolean hasItalianLeadingZero;
    private boolean hasNationalNumber;
    private boolean hasNumberOfLeadingZeros;
    private boolean hasPreferredDomesticCarrierCode;
    private boolean hasRawInput;
    private int countryCode_ = 0;
    private long nationalNumber_ = 0;
    private String extension_ = "";
    private boolean italianLeadingZero_ = false;
    private int numberOfLeadingZeros_ = 1;
    private String rawInput_ = "";
    private String preferredDomesticCarrierCode_ = "";
    private CountryCodeSource countryCodeSource_ = CountryCodeSource.UNSPECIFIED;

    /* loaded from: classes2-dex2jar.jar:com/phone/libphone/Phonenumber$PhoneNumber$CountryCodeSource.class */
    public enum CountryCodeSource {
        FROM_NUMBER_WITH_PLUS_SIGN,
        FROM_NUMBER_WITH_IDD,
        FROM_NUMBER_WITHOUT_PLUS_SIGN,
        FROM_DEFAULT_COUNTRY,
        UNSPECIFIED
    }

    public final Phonenumber$PhoneNumber clear() {
        clearCountryCode();
        clearNationalNumber();
        clearExtension();
        clearItalianLeadingZero();
        clearNumberOfLeadingZeros();
        clearRawInput();
        clearCountryCodeSource();
        clearPreferredDomesticCarrierCode();
        return this;
    }

    public Phonenumber$PhoneNumber clearCountryCode() {
        this.hasCountryCode = false;
        this.countryCode_ = 0;
        return this;
    }

    public Phonenumber$PhoneNumber clearCountryCodeSource() {
        this.hasCountryCodeSource = false;
        this.countryCodeSource_ = CountryCodeSource.UNSPECIFIED;
        return this;
    }

    public Phonenumber$PhoneNumber clearExtension() {
        this.hasExtension = false;
        this.extension_ = "";
        return this;
    }

    public Phonenumber$PhoneNumber clearItalianLeadingZero() {
        this.hasItalianLeadingZero = false;
        this.italianLeadingZero_ = false;
        return this;
    }

    public Phonenumber$PhoneNumber clearNationalNumber() {
        this.hasNationalNumber = false;
        this.nationalNumber_ = 0L;
        return this;
    }

    public Phonenumber$PhoneNumber clearNumberOfLeadingZeros() {
        this.hasNumberOfLeadingZeros = false;
        this.numberOfLeadingZeros_ = 1;
        return this;
    }

    public Phonenumber$PhoneNumber clearPreferredDomesticCarrierCode() {
        this.hasPreferredDomesticCarrierCode = false;
        this.preferredDomesticCarrierCode_ = "";
        return this;
    }

    public Phonenumber$PhoneNumber clearRawInput() {
        this.hasRawInput = false;
        this.rawInput_ = "";
        return this;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Phonenumber$PhoneNumber) && exactlySameAs((Phonenumber$PhoneNumber) obj);
    }

    public boolean exactlySameAs(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        if (phonenumber$PhoneNumber == null) {
            return false;
        }
        if (this == phonenumber$PhoneNumber) {
            return true;
        }
        boolean z = false;
        if (this.countryCode_ == phonenumber$PhoneNumber.countryCode_) {
            z = false;
            if (this.nationalNumber_ == phonenumber$PhoneNumber.nationalNumber_) {
                z = false;
                if (this.extension_.equals(phonenumber$PhoneNumber.extension_)) {
                    z = false;
                    if (this.italianLeadingZero_ == phonenumber$PhoneNumber.italianLeadingZero_) {
                        z = false;
                        if (this.numberOfLeadingZeros_ == phonenumber$PhoneNumber.numberOfLeadingZeros_) {
                            z = false;
                            if (this.rawInput_.equals(phonenumber$PhoneNumber.rawInput_)) {
                                z = false;
                                if (this.countryCodeSource_ == phonenumber$PhoneNumber.countryCodeSource_) {
                                    z = false;
                                    if (this.preferredDomesticCarrierCode_.equals(phonenumber$PhoneNumber.preferredDomesticCarrierCode_)) {
                                        z = false;
                                        if (hasPreferredDomesticCarrierCode() == phonenumber$PhoneNumber.hasPreferredDomesticCarrierCode()) {
                                            z = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public int getCountryCode() {
        return this.countryCode_;
    }

    public CountryCodeSource getCountryCodeSource() {
        return this.countryCodeSource_;
    }

    public String getExtension() {
        return this.extension_;
    }

    public long getNationalNumber() {
        return this.nationalNumber_;
    }

    public int getNumberOfLeadingZeros() {
        return this.numberOfLeadingZeros_;
    }

    public String getPreferredDomesticCarrierCode() {
        return this.preferredDomesticCarrierCode_;
    }

    public String getRawInput() {
        return this.rawInput_;
    }

    public boolean hasCountryCode() {
        return this.hasCountryCode;
    }

    public boolean hasCountryCodeSource() {
        return this.hasCountryCodeSource;
    }

    public boolean hasExtension() {
        return this.hasExtension;
    }

    public boolean hasItalianLeadingZero() {
        return this.hasItalianLeadingZero;
    }

    public boolean hasNationalNumber() {
        return this.hasNationalNumber;
    }

    public boolean hasNumberOfLeadingZeros() {
        return this.hasNumberOfLeadingZeros;
    }

    public boolean hasPreferredDomesticCarrierCode() {
        return this.hasPreferredDomesticCarrierCode;
    }

    public boolean hasRawInput() {
        return this.hasRawInput;
    }

    public int hashCode() {
        int countryCode = getCountryCode();
        int hashCode = Long.valueOf(getNationalNumber()).hashCode();
        int hashCode2 = getExtension().hashCode();
        int i = 1231;
        int i2 = isItalianLeadingZero() ? 1231 : 1237;
        int numberOfLeadingZeros = getNumberOfLeadingZeros();
        int hashCode3 = getRawInput().hashCode();
        int hashCode4 = getCountryCodeSource().hashCode();
        int hashCode5 = getPreferredDomesticCarrierCode().hashCode();
        if (!hasPreferredDomesticCarrierCode()) {
            i = 1237;
        }
        return ((((((((((((((((2173 + countryCode) * 53) + hashCode) * 53) + hashCode2) * 53) + i2) * 53) + numberOfLeadingZeros) * 53) + hashCode3) * 53) + hashCode4) * 53) + hashCode5) * 53) + i;
    }

    public boolean isItalianLeadingZero() {
        return this.italianLeadingZero_;
    }

    public Phonenumber$PhoneNumber mergeFrom(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        if (phonenumber$PhoneNumber.hasCountryCode()) {
            setCountryCode(phonenumber$PhoneNumber.getCountryCode());
        }
        if (phonenumber$PhoneNumber.hasNationalNumber()) {
            setNationalNumber(phonenumber$PhoneNumber.getNationalNumber());
        }
        if (phonenumber$PhoneNumber.hasExtension()) {
            setExtension(phonenumber$PhoneNumber.getExtension());
        }
        if (phonenumber$PhoneNumber.hasItalianLeadingZero()) {
            setItalianLeadingZero(phonenumber$PhoneNumber.isItalianLeadingZero());
        }
        if (phonenumber$PhoneNumber.hasNumberOfLeadingZeros()) {
            setNumberOfLeadingZeros(phonenumber$PhoneNumber.getNumberOfLeadingZeros());
        }
        if (phonenumber$PhoneNumber.hasRawInput()) {
            setRawInput(phonenumber$PhoneNumber.getRawInput());
        }
        if (phonenumber$PhoneNumber.hasCountryCodeSource()) {
            setCountryCodeSource(phonenumber$PhoneNumber.getCountryCodeSource());
        }
        if (phonenumber$PhoneNumber.hasPreferredDomesticCarrierCode()) {
            setPreferredDomesticCarrierCode(phonenumber$PhoneNumber.getPreferredDomesticCarrierCode());
        }
        return this;
    }

    public Phonenumber$PhoneNumber setCountryCode(int i) {
        this.hasCountryCode = true;
        this.countryCode_ = i;
        return this;
    }

    public Phonenumber$PhoneNumber setCountryCodeSource(CountryCodeSource countryCodeSource) {
        Objects.requireNonNull(countryCodeSource);
        this.hasCountryCodeSource = true;
        this.countryCodeSource_ = countryCodeSource;
        return this;
    }

    public Phonenumber$PhoneNumber setExtension(String str) {
        Objects.requireNonNull(str);
        this.hasExtension = true;
        this.extension_ = str;
        return this;
    }

    public Phonenumber$PhoneNumber setItalianLeadingZero(boolean z) {
        this.hasItalianLeadingZero = true;
        this.italianLeadingZero_ = z;
        return this;
    }

    public Phonenumber$PhoneNumber setNationalNumber(long j) {
        this.hasNationalNumber = true;
        this.nationalNumber_ = j;
        return this;
    }

    public Phonenumber$PhoneNumber setNumberOfLeadingZeros(int i) {
        this.hasNumberOfLeadingZeros = true;
        this.numberOfLeadingZeros_ = i;
        return this;
    }

    public Phonenumber$PhoneNumber setPreferredDomesticCarrierCode(String str) {
        Objects.requireNonNull(str);
        this.hasPreferredDomesticCarrierCode = true;
        this.preferredDomesticCarrierCode_ = str;
        return this;
    }

    public Phonenumber$PhoneNumber setRawInput(String str) {
        Objects.requireNonNull(str);
        this.hasRawInput = true;
        this.rawInput_ = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Country Code: ");
        sb.append(this.countryCode_);
        sb.append(" National Number: ");
        sb.append(this.nationalNumber_);
        if (hasItalianLeadingZero() && isItalianLeadingZero()) {
            sb.append(" Leading Zero(s): true");
        }
        if (hasNumberOfLeadingZeros()) {
            sb.append(" Number of leading zeros: ");
            sb.append(this.numberOfLeadingZeros_);
        }
        if (hasExtension()) {
            sb.append(" Extension: ");
            sb.append(this.extension_);
        }
        if (hasCountryCodeSource()) {
            sb.append(" Country Code Source: ");
            sb.append(this.countryCodeSource_);
        }
        if (hasPreferredDomesticCarrierCode()) {
            sb.append(" Preferred Domestic Carrier Code: ");
            sb.append(this.preferredDomesticCarrierCode_);
        }
        return sb.toString();
    }
}
