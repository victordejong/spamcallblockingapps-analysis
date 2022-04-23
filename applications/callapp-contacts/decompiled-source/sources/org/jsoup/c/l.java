package org.jsoup.c;

import java.util.Locale;
import org.jsoup.c.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/l.class */
public enum l {
    Data { // from class: org.jsoup.c.l.1
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.b(this);
                kVar.a(aVar.e());
            } else if (d2 == '&') {
                kVar.a(CharacterReferenceInData);
            } else if (d2 == '<') {
                kVar.a(TagOpen);
            } else if (d2 != 65535) {
                kVar.a(aVar.i());
            } else {
                kVar.a(new i.e());
            }
        }
    },
    CharacterReferenceInData { // from class: org.jsoup.c.l.12
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            l.readCharRef(kVar, Data);
        }
    },
    Rcdata { // from class: org.jsoup.c.l.23
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.b(this);
                aVar.g();
                kVar.a((char) 65533);
            } else if (d2 == '&') {
                kVar.a(CharacterReferenceInRcdata);
            } else if (d2 == '<') {
                kVar.a(RcdataLessthanSign);
            } else if (d2 != 65535) {
                kVar.a(aVar.i());
            } else {
                kVar.a(new i.e());
            }
        }
    },
    CharacterReferenceInRcdata { // from class: org.jsoup.c.l.34
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            l.readCharRef(kVar, Rcdata);
        }
    },
    Rawtext { // from class: org.jsoup.c.l.45
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            l.readRawData(kVar, aVar, this, RawtextLessthanSign);
        }
    },
    ScriptData { // from class: org.jsoup.c.l.56
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            l.readRawData(kVar, aVar, this, ScriptDataLessthanSign);
        }
    },
    PLAINTEXT { // from class: org.jsoup.c.l.65
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.b(this);
                aVar.g();
                kVar.a((char) 65533);
            } else if (d2 != 65535) {
                kVar.a(aVar.a((char) 0));
            } else {
                kVar.a(new i.e());
            }
        }
    },
    TagOpen { // from class: org.jsoup.c.l.66
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == '!') {
                kVar.a(MarkupDeclarationOpen);
            } else if (d2 == '/') {
                kVar.a(EndTagOpen);
            } else if (d2 == '?') {
                kVar.c();
                kVar.a(BogusComment);
            } else if (aVar.p()) {
                kVar.a(true);
                kVar.f39250c = TagName;
            } else {
                kVar.b(this);
                kVar.a('<');
                kVar.f39250c = Data;
            }
        }
    },
    EndTagOpen { // from class: org.jsoup.c.l.67
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.c()) {
                kVar.c(this);
                kVar.a("</");
                kVar.f39250c = Data;
            } else if (aVar.p()) {
                kVar.a(false);
                kVar.f39250c = TagName;
            } else if (aVar.b('>')) {
                kVar.b(this);
                kVar.a(Data);
            } else {
                kVar.b(this);
                kVar.c();
                kVar.a(BogusComment);
            }
        }
    },
    TagName { // from class: org.jsoup.c.l.2
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            kVar.i.b(aVar.j());
            char e = aVar.e();
            if (e != 0) {
                if (e != ' ') {
                    if (e != '/') {
                        if (e == '<') {
                            aVar.f();
                            kVar.b(this);
                        } else if (e != '>') {
                            if (e == 65535) {
                                kVar.c(this);
                                kVar.f39250c = Data;
                                return;
                            } else if (!(e == '\t' || e == '\n' || e == '\f' || e == '\r')) {
                                kVar.i.a(e);
                                return;
                            }
                        }
                        kVar.a();
                        kVar.f39250c = Data;
                        return;
                    }
                    kVar.f39250c = SelfClosingStartTag;
                    return;
                }
                kVar.f39250c = BeforeAttributeName;
                return;
            }
            kVar.i.b(l.replacementStr);
        }
    },
    RcdataLessthanSign { // from class: org.jsoup.c.l.3
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.b('/')) {
                i.a(kVar.h);
                kVar.a(RCDATAEndTagOpen);
                return;
            }
            if (aVar.p() && kVar.o != null) {
                String str = "</" + kVar.o;
                if (!(aVar.a((CharSequence) str.toLowerCase(Locale.ENGLISH)) >= 0 || aVar.a((CharSequence) str.toUpperCase(Locale.ENGLISH)) >= 0)) {
                    kVar.i = kVar.a(false).a(kVar.o);
                    kVar.a();
                    aVar.f();
                    kVar.f39250c = Data;
                    return;
                }
            }
            kVar.a("<");
            kVar.f39250c = Rcdata;
        }
    },
    RCDATAEndTagOpen { // from class: org.jsoup.c.l.4
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.p()) {
                kVar.a(false);
                kVar.i.a(aVar.d());
                kVar.h.append(aVar.d());
                kVar.a(RCDATAEndTagName);
                return;
            }
            kVar.a("</");
            kVar.f39250c = Rcdata;
        }
    },
    RCDATAEndTagName { // from class: org.jsoup.c.l.5
        private void anythingElse(k kVar, a aVar) {
            kVar.a("</" + kVar.h.toString());
            aVar.f();
            kVar.f39250c = Rcdata;
        }

        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.p()) {
                String l = aVar.l();
                kVar.i.b(l);
                kVar.h.append(l);
                return;
            }
            char e = aVar.e();
            if (e == '\t' || e == '\n' || e == '\f' || e == '\r' || e == ' ') {
                if (kVar.f()) {
                    kVar.f39250c = BeforeAttributeName;
                } else {
                    anythingElse(kVar, aVar);
                }
            } else if (e != '/') {
                if (e != '>') {
                    anythingElse(kVar, aVar);
                } else if (kVar.f()) {
                    kVar.a();
                    kVar.f39250c = Data;
                } else {
                    anythingElse(kVar, aVar);
                }
            } else if (kVar.f()) {
                kVar.f39250c = SelfClosingStartTag;
            } else {
                anythingElse(kVar, aVar);
            }
        }
    },
    RawtextLessthanSign { // from class: org.jsoup.c.l.6
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.b('/')) {
                i.a(kVar.h);
                kVar.a(RawtextEndTagOpen);
                return;
            }
            kVar.a('<');
            kVar.f39250c = Rawtext;
        }
    },
    RawtextEndTagOpen { // from class: org.jsoup.c.l.7
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            l.readEndTag(kVar, aVar, RawtextEndTagName, Rawtext);
        }
    },
    RawtextEndTagName { // from class: org.jsoup.c.l.8
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            l.handleDataEndTag(kVar, aVar, Rawtext);
        }
    },
    ScriptDataLessthanSign { // from class: org.jsoup.c.l.9
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == '!') {
                kVar.a("<!");
                kVar.f39250c = ScriptDataEscapeStart;
            } else if (e == '/') {
                i.a(kVar.h);
                kVar.f39250c = ScriptDataEndTagOpen;
            } else if (e != 65535) {
                kVar.a("<");
                aVar.f();
                kVar.f39250c = ScriptData;
            } else {
                kVar.a("<");
                kVar.c(this);
                kVar.f39250c = Data;
            }
        }
    },
    ScriptDataEndTagOpen { // from class: org.jsoup.c.l.10
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            l.readEndTag(kVar, aVar, ScriptDataEndTagName, ScriptData);
        }
    },
    ScriptDataEndTagName { // from class: org.jsoup.c.l.11
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            l.handleDataEndTag(kVar, aVar, ScriptData);
        }
    },
    ScriptDataEscapeStart { // from class: org.jsoup.c.l.13
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.b('-')) {
                kVar.a('-');
                kVar.a(ScriptDataEscapeStartDash);
                return;
            }
            kVar.f39250c = ScriptData;
        }
    },
    ScriptDataEscapeStartDash { // from class: org.jsoup.c.l.14
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.b('-')) {
                kVar.a('-');
                kVar.a(ScriptDataEscapedDashDash);
                return;
            }
            kVar.f39250c = ScriptData;
        }
    },
    ScriptDataEscaped { // from class: org.jsoup.c.l.15
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.c()) {
                kVar.c(this);
                kVar.f39250c = Data;
                return;
            }
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.b(this);
                aVar.g();
                kVar.a((char) 65533);
            } else if (d2 == '-') {
                kVar.a('-');
                kVar.a(ScriptDataEscapedDash);
            } else if (d2 != '<') {
                kVar.a(aVar.a('-', '<', 0));
            } else {
                kVar.a(ScriptDataEscapedLessthanSign);
            }
        }
    },
    ScriptDataEscapedDash { // from class: org.jsoup.c.l.16
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.c()) {
                kVar.c(this);
                kVar.f39250c = Data;
                return;
            }
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.a((char) 65533);
                kVar.f39250c = ScriptDataEscaped;
            } else if (e == '-') {
                kVar.a(e);
                kVar.f39250c = ScriptDataEscapedDashDash;
            } else if (e != '<') {
                kVar.a(e);
                kVar.f39250c = ScriptDataEscaped;
            } else {
                kVar.f39250c = ScriptDataEscapedLessthanSign;
            }
        }
    },
    ScriptDataEscapedDashDash { // from class: org.jsoup.c.l.17
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.c()) {
                kVar.c(this);
                kVar.f39250c = Data;
                return;
            }
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.a((char) 65533);
                kVar.f39250c = ScriptDataEscaped;
            } else if (e == '-') {
                kVar.a(e);
            } else if (e == '<') {
                kVar.f39250c = ScriptDataEscapedLessthanSign;
            } else if (e != '>') {
                kVar.a(e);
                kVar.f39250c = ScriptDataEscaped;
            } else {
                kVar.a(e);
                kVar.f39250c = ScriptData;
            }
        }
    },
    ScriptDataEscapedLessthanSign { // from class: org.jsoup.c.l.18
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.p()) {
                i.a(kVar.h);
                kVar.h.append(aVar.d());
                kVar.a("<" + aVar.d());
                kVar.a(ScriptDataDoubleEscapeStart);
            } else if (aVar.b('/')) {
                i.a(kVar.h);
                kVar.a(ScriptDataEscapedEndTagOpen);
            } else {
                kVar.a('<');
                kVar.f39250c = ScriptDataEscaped;
            }
        }
    },
    ScriptDataEscapedEndTagOpen { // from class: org.jsoup.c.l.19
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.p()) {
                kVar.a(false);
                kVar.i.a(aVar.d());
                kVar.h.append(aVar.d());
                kVar.a(ScriptDataEscapedEndTagName);
                return;
            }
            kVar.a("</");
            kVar.f39250c = ScriptDataEscaped;
        }
    },
    ScriptDataEscapedEndTagName { // from class: org.jsoup.c.l.20
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            l.handleDataEndTag(kVar, aVar, ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscapeStart { // from class: org.jsoup.c.l.21
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            l.handleDataDoubleEscapeTag(kVar, aVar, ScriptDataDoubleEscaped, ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscaped { // from class: org.jsoup.c.l.22
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.b(this);
                aVar.g();
                kVar.a((char) 65533);
            } else if (d2 == '-') {
                kVar.a(d2);
                kVar.a(ScriptDataDoubleEscapedDash);
            } else if (d2 == '<') {
                kVar.a(d2);
                kVar.a(ScriptDataDoubleEscapedLessthanSign);
            } else if (d2 != 65535) {
                kVar.a(aVar.a('-', '<', 0));
            } else {
                kVar.c(this);
                kVar.f39250c = Data;
            }
        }
    },
    ScriptDataDoubleEscapedDash { // from class: org.jsoup.c.l.24
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.a((char) 65533);
                kVar.f39250c = ScriptDataDoubleEscaped;
            } else if (e == '-') {
                kVar.a(e);
                kVar.f39250c = ScriptDataDoubleEscapedDashDash;
            } else if (e == '<') {
                kVar.a(e);
                kVar.f39250c = ScriptDataDoubleEscapedLessthanSign;
            } else if (e != 65535) {
                kVar.a(e);
                kVar.f39250c = ScriptDataDoubleEscaped;
            } else {
                kVar.c(this);
                kVar.f39250c = Data;
            }
        }
    },
    ScriptDataDoubleEscapedDashDash { // from class: org.jsoup.c.l.25
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.a((char) 65533);
                kVar.f39250c = ScriptDataDoubleEscaped;
            } else if (e == '-') {
                kVar.a(e);
            } else if (e == '<') {
                kVar.a(e);
                kVar.f39250c = ScriptDataDoubleEscapedLessthanSign;
            } else if (e == '>') {
                kVar.a(e);
                kVar.f39250c = ScriptData;
            } else if (e != 65535) {
                kVar.a(e);
                kVar.f39250c = ScriptDataDoubleEscaped;
            } else {
                kVar.c(this);
                kVar.f39250c = Data;
            }
        }
    },
    ScriptDataDoubleEscapedLessthanSign { // from class: org.jsoup.c.l.26
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.b('/')) {
                kVar.a('/');
                i.a(kVar.h);
                kVar.a(ScriptDataDoubleEscapeEnd);
                return;
            }
            kVar.f39250c = ScriptDataDoubleEscaped;
        }
    },
    ScriptDataDoubleEscapeEnd { // from class: org.jsoup.c.l.27
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            l.handleDataDoubleEscapeTag(kVar, aVar, ScriptDataEscaped, ScriptDataDoubleEscaped);
        }
    },
    BeforeAttributeName { // from class: org.jsoup.c.l.28
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                aVar.f();
                kVar.b(this);
                kVar.i.i();
                kVar.f39250c = AttributeName;
            } else if (e != ' ') {
                if (!(e == '\"' || e == '\'')) {
                    if (e == '/') {
                        kVar.f39250c = SelfClosingStartTag;
                        return;
                    } else if (e == 65535) {
                        kVar.c(this);
                        kVar.f39250c = Data;
                        return;
                    } else if (e != '\t' && e != '\n' && e != '\f' && e != '\r') {
                        switch (e) {
                            case '<':
                                aVar.f();
                                kVar.b(this);
                                kVar.a();
                                kVar.f39250c = Data;
                                return;
                            case '=':
                                break;
                            case '>':
                                kVar.a();
                                kVar.f39250c = Data;
                                return;
                            default:
                                kVar.i.i();
                                aVar.f();
                                kVar.f39250c = AttributeName;
                                return;
                        }
                    } else {
                        return;
                    }
                }
                kVar.b(this);
                kVar.i.i();
                kVar.i.b(e);
                kVar.f39250c = AttributeName;
            }
        }
    },
    AttributeName { // from class: org.jsoup.c.l.29
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            kVar.i.c(aVar.b(attributeNameCharsSorted));
            char e = aVar.e();
            if (e != 0) {
                if (e != ' ') {
                    if (!(e == '\"' || e == '\'')) {
                        if (e == '/') {
                            kVar.f39250c = SelfClosingStartTag;
                            return;
                        } else if (e == 65535) {
                            kVar.c(this);
                            kVar.f39250c = Data;
                            return;
                        } else if (!(e == '\t' || e == '\n' || e == '\f' || e == '\r')) {
                            switch (e) {
                                case '=':
                                    kVar.f39250c = BeforeAttributeValue;
                                    return;
                                case '>':
                                    kVar.a();
                                    kVar.f39250c = Data;
                                    return;
                            }
                            kVar.i.b(e);
                            return;
                        }
                    }
                    kVar.b(this);
                    kVar.i.b(e);
                    return;
                }
                kVar.f39250c = AfterAttributeName;
                return;
            }
            kVar.b(this);
            kVar.i.b((char) 65533);
        }
    },
    AfterAttributeName { // from class: org.jsoup.c.l.30
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.i.b((char) 65533);
                kVar.f39250c = AttributeName;
            } else if (e != ' ') {
                if (!(e == '\"' || e == '\'')) {
                    if (e == '/') {
                        kVar.f39250c = SelfClosingStartTag;
                        return;
                    } else if (e == 65535) {
                        kVar.c(this);
                        kVar.f39250c = Data;
                        return;
                    } else if (e != '\t' && e != '\n' && e != '\f' && e != '\r') {
                        switch (e) {
                            case '<':
                                break;
                            case '=':
                                kVar.f39250c = BeforeAttributeValue;
                                return;
                            case '>':
                                kVar.a();
                                kVar.f39250c = Data;
                                return;
                            default:
                                kVar.i.i();
                                aVar.f();
                                kVar.f39250c = AttributeName;
                                return;
                        }
                    } else {
                        return;
                    }
                }
                kVar.b(this);
                kVar.i.i();
                kVar.i.b(e);
                kVar.f39250c = AttributeName;
            }
        }
    },
    BeforeAttributeValue { // from class: org.jsoup.c.l.31
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.i.c((char) 65533);
                kVar.f39250c = AttributeValue_unquoted;
            } else if (e == ' ') {
            } else {
                if (e != '\"') {
                    if (e != '`') {
                        if (e == 65535) {
                            kVar.c(this);
                            kVar.a();
                            kVar.f39250c = Data;
                            return;
                        } else if (e != '\t' && e != '\n' && e != '\f' && e != '\r') {
                            if (e == '&') {
                                aVar.f();
                                kVar.f39250c = AttributeValue_unquoted;
                                return;
                            } else if (e != '\'') {
                                switch (e) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        kVar.b(this);
                                        kVar.a();
                                        kVar.f39250c = Data;
                                        return;
                                    default:
                                        aVar.f();
                                        kVar.f39250c = AttributeValue_unquoted;
                                        return;
                                }
                            } else {
                                kVar.f39250c = AttributeValue_singleQuoted;
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    kVar.b(this);
                    kVar.i.c(e);
                    kVar.f39250c = AttributeValue_unquoted;
                    return;
                }
                kVar.f39250c = AttributeValue_doubleQuoted;
            }
        }
    },
    AttributeValue_doubleQuoted { // from class: org.jsoup.c.l.32
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            String b2 = aVar.b(attributeDoubleValueCharsSorted);
            if (b2.length() > 0) {
                kVar.i.d(b2);
            } else {
                kVar.i.e = true;
            }
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.i.c((char) 65533);
            } else if (e == '\"') {
                kVar.f39250c = AfterAttributeValue_quoted;
            } else if (e == '&') {
                int[] a2 = kVar.a('\"', true);
                if (a2 != null) {
                    kVar.i.a(a2);
                } else {
                    kVar.i.c('&');
                }
            } else if (e != 65535) {
                kVar.i.c(e);
            } else {
                kVar.c(this);
                kVar.f39250c = Data;
            }
        }
    },
    AttributeValue_singleQuoted { // from class: org.jsoup.c.l.33
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            String b2 = aVar.b(attributeSingleValueCharsSorted);
            if (b2.length() > 0) {
                kVar.i.d(b2);
            } else {
                kVar.i.e = true;
            }
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.i.c((char) 65533);
            } else if (e == 65535) {
                kVar.c(this);
                kVar.f39250c = Data;
            } else if (e == '&') {
                int[] a2 = kVar.a('\'', true);
                if (a2 != null) {
                    kVar.i.a(a2);
                } else {
                    kVar.i.c('&');
                }
            } else if (e != '\'') {
                kVar.i.c(e);
            } else {
                kVar.f39250c = AfterAttributeValue_quoted;
            }
        }
    },
    AttributeValue_unquoted { // from class: org.jsoup.c.l.35
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            String b2 = aVar.b(attributeValueUnquoted);
            if (b2.length() > 0) {
                kVar.i.d(b2);
            }
            char e = aVar.e();
            if (e != 0) {
                if (e != ' ') {
                    if (!(e == '\"' || e == '`')) {
                        if (e == 65535) {
                            kVar.c(this);
                            kVar.f39250c = Data;
                            return;
                        } else if (!(e == '\t' || e == '\n' || e == '\f' || e == '\r')) {
                            if (e == '&') {
                                int[] a2 = kVar.a('>', true);
                                if (a2 != null) {
                                    kVar.i.a(a2);
                                    return;
                                } else {
                                    kVar.i.c('&');
                                    return;
                                }
                            } else if (e != '\'') {
                                switch (e) {
                                    case '>':
                                        kVar.a();
                                        kVar.f39250c = Data;
                                        return;
                                    case '<':
                                    case '=':
                                        kVar.b(this);
                                        break;
                                }
                                kVar.i.c(e);
                                return;
                            }
                        }
                    }
                    kVar.b(this);
                    kVar.i.c(e);
                    return;
                }
                kVar.f39250c = BeforeAttributeName;
                return;
            }
            kVar.b(this);
            kVar.i.c((char) 65533);
        }
    },
    AfterAttributeValue_quoted { // from class: org.jsoup.c.l.36
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == '\t' || e == '\n' || e == '\f' || e == '\r' || e == ' ') {
                kVar.f39250c = BeforeAttributeName;
            } else if (e == '/') {
                kVar.f39250c = SelfClosingStartTag;
            } else if (e == '>') {
                kVar.a();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                aVar.f();
                kVar.b(this);
                kVar.f39250c = BeforeAttributeName;
            } else {
                kVar.c(this);
                kVar.f39250c = Data;
            }
        }
    },
    SelfClosingStartTag { // from class: org.jsoup.c.l.37
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == '>') {
                kVar.i.f = true;
                kVar.a();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                aVar.f();
                kVar.b(this);
                kVar.f39250c = BeforeAttributeName;
            } else {
                kVar.c(this);
                kVar.f39250c = Data;
            }
        }
    },
    BogusComment { // from class: org.jsoup.c.l.38
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            aVar.f();
            kVar.n.a(aVar.a('>'));
            char e = aVar.e();
            if (e == '>' || e == 65535) {
                kVar.b();
                kVar.f39250c = Data;
            }
        }
    },
    MarkupDeclarationOpen { // from class: org.jsoup.c.l.39
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.a("--")) {
                kVar.n.a();
                kVar.f39250c = CommentStart;
            } else if (aVar.b("DOCTYPE")) {
                kVar.f39250c = Doctype;
            } else if (aVar.a("[CDATA[")) {
                i.a(kVar.h);
                kVar.f39250c = CdataSection;
            } else {
                kVar.b(this);
                kVar.c();
                kVar.a(BogusComment);
            }
        }
    },
    CommentStart { // from class: org.jsoup.c.l.40
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.n.a((char) 65533);
                kVar.f39250c = Comment;
            } else if (e == '-') {
                kVar.f39250c = CommentStartDash;
            } else if (e == '>') {
                kVar.b(this);
                kVar.b();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                aVar.f();
                kVar.f39250c = Comment;
            } else {
                kVar.c(this);
                kVar.b();
                kVar.f39250c = Data;
            }
        }
    },
    CommentStartDash { // from class: org.jsoup.c.l.41
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.n.a((char) 65533);
                kVar.f39250c = Comment;
            } else if (e == '-') {
                kVar.f39250c = CommentStartDash;
            } else if (e == '>') {
                kVar.b(this);
                kVar.b();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                kVar.n.a(e);
                kVar.f39250c = Comment;
            } else {
                kVar.c(this);
                kVar.b();
                kVar.f39250c = Data;
            }
        }
    },
    Comment { // from class: org.jsoup.c.l.42
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.b(this);
                aVar.g();
                kVar.n.a((char) 65533);
            } else if (d2 == '-') {
                kVar.a(CommentEndDash);
            } else if (d2 != 65535) {
                kVar.n.a(aVar.a('-', 0));
            } else {
                kVar.c(this);
                kVar.b();
                kVar.f39250c = Data;
            }
        }
    },
    CommentEndDash { // from class: org.jsoup.c.l.43
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.n.a('-').a((char) 65533);
                kVar.f39250c = Comment;
            } else if (e == '-') {
                kVar.f39250c = CommentEnd;
            } else if (e != 65535) {
                kVar.n.a('-').a(e);
                kVar.f39250c = Comment;
            } else {
                kVar.c(this);
                kVar.b();
                kVar.f39250c = Data;
            }
        }
    },
    CommentEnd { // from class: org.jsoup.c.l.44
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.n.a("--").a((char) 65533);
                kVar.f39250c = Comment;
            } else if (e == '!') {
                kVar.b(this);
                kVar.f39250c = CommentEndBang;
            } else if (e == '-') {
                kVar.b(this);
                kVar.n.a('-');
            } else if (e == '>') {
                kVar.b();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                kVar.b(this);
                kVar.n.a("--").a(e);
                kVar.f39250c = Comment;
            } else {
                kVar.c(this);
                kVar.b();
                kVar.f39250c = Data;
            }
        }
    },
    CommentEndBang { // from class: org.jsoup.c.l.46
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.n.a("--!").a((char) 65533);
                kVar.f39250c = Comment;
            } else if (e == '-') {
                kVar.n.a("--!");
                kVar.f39250c = CommentEndDash;
            } else if (e == '>') {
                kVar.b();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                kVar.n.a("--!").a(e);
                kVar.f39250c = Comment;
            } else {
                kVar.c(this);
                kVar.b();
                kVar.f39250c = Data;
            }
        }
    },
    Doctype { // from class: org.jsoup.c.l.47
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == '\t' || e == '\n' || e == '\f' || e == '\r' || e == ' ') {
                kVar.f39250c = BeforeDoctypeName;
                return;
            }
            if (e != '>') {
                if (e != 65535) {
                    kVar.b(this);
                    kVar.f39250c = BeforeDoctypeName;
                    return;
                }
                kVar.c(this);
            }
            kVar.b(this);
            kVar.d();
            kVar.m.f = true;
            kVar.e();
            kVar.f39250c = Data;
        }
    },
    BeforeDoctypeName { // from class: org.jsoup.c.l.48
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.p()) {
                kVar.d();
                kVar.f39250c = DoctypeName;
                return;
            }
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.d();
                kVar.m.f39240b.append((char) 65533);
                kVar.f39250c = DoctypeName;
            } else if (e == ' ') {
            } else {
                if (e == 65535) {
                    kVar.c(this);
                    kVar.d();
                    kVar.m.f = true;
                    kVar.e();
                    kVar.f39250c = Data;
                } else if (e != '\t' && e != '\n' && e != '\f' && e != '\r') {
                    kVar.d();
                    kVar.m.f39240b.append(e);
                    kVar.f39250c = DoctypeName;
                }
            }
        }
    },
    DoctypeName { // from class: org.jsoup.c.l.49
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.p()) {
                kVar.m.f39240b.append(aVar.l());
                return;
            }
            char e = aVar.e();
            if (e != 0) {
                if (e != ' ') {
                    if (e == '>') {
                        kVar.e();
                        kVar.f39250c = Data;
                        return;
                    } else if (e == 65535) {
                        kVar.c(this);
                        kVar.m.f = true;
                        kVar.e();
                        kVar.f39250c = Data;
                        return;
                    } else if (!(e == '\t' || e == '\n' || e == '\f' || e == '\r')) {
                        kVar.m.f39240b.append(e);
                        return;
                    }
                }
                kVar.f39250c = AfterDoctypeName;
                return;
            }
            kVar.b(this);
            kVar.m.f39240b.append((char) 65533);
        }
    },
    AfterDoctypeName { // from class: org.jsoup.c.l.50
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            if (aVar.c()) {
                kVar.c(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            } else if (aVar.c('\t', '\n', '\r', '\f', ' ')) {
                aVar.g();
            } else if (aVar.b('>')) {
                kVar.e();
                kVar.a(Data);
            } else if (aVar.b("PUBLIC")) {
                kVar.m.f39241c = "PUBLIC";
                kVar.f39250c = AfterDoctypePublicKeyword;
            } else if (aVar.b("SYSTEM")) {
                kVar.m.f39241c = "SYSTEM";
                kVar.f39250c = AfterDoctypeSystemKeyword;
            } else {
                kVar.b(this);
                kVar.m.f = true;
                kVar.a(BogusDoctype);
            }
        }
    },
    AfterDoctypePublicKeyword { // from class: org.jsoup.c.l.51
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == '\t' || e == '\n' || e == '\f' || e == '\r' || e == ' ') {
                kVar.f39250c = BeforeDoctypePublicIdentifier;
            } else if (e == '\"') {
                kVar.b(this);
                kVar.f39250c = DoctypePublicIdentifier_doubleQuoted;
            } else if (e == '\'') {
                kVar.b(this);
                kVar.f39250c = DoctypePublicIdentifier_singleQuoted;
            } else if (e == '>') {
                kVar.b(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                kVar.b(this);
                kVar.m.f = true;
                kVar.f39250c = BogusDoctype;
            } else {
                kVar.c(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            }
        }
    },
    BeforeDoctypePublicIdentifier { // from class: org.jsoup.c.l.52
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e != '\t' && e != '\n' && e != '\f' && e != '\r' && e != ' ') {
                if (e == '\"') {
                    kVar.f39250c = DoctypePublicIdentifier_doubleQuoted;
                } else if (e == '\'') {
                    kVar.f39250c = DoctypePublicIdentifier_singleQuoted;
                } else if (e == '>') {
                    kVar.b(this);
                    kVar.m.f = true;
                    kVar.e();
                    kVar.f39250c = Data;
                } else if (e != 65535) {
                    kVar.b(this);
                    kVar.m.f = true;
                    kVar.f39250c = BogusDoctype;
                } else {
                    kVar.c(this);
                    kVar.m.f = true;
                    kVar.e();
                    kVar.f39250c = Data;
                }
            }
        }
    },
    DoctypePublicIdentifier_doubleQuoted { // from class: org.jsoup.c.l.53
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.m.f39242d.append((char) 65533);
            } else if (e == '\"') {
                kVar.f39250c = AfterDoctypePublicIdentifier;
            } else if (e == '>') {
                kVar.b(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                kVar.m.f39242d.append(e);
            } else {
                kVar.c(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            }
        }
    },
    DoctypePublicIdentifier_singleQuoted { // from class: org.jsoup.c.l.54
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.m.f39242d.append((char) 65533);
            } else if (e == '\'') {
                kVar.f39250c = AfterDoctypePublicIdentifier;
            } else if (e == '>') {
                kVar.b(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                kVar.m.f39242d.append(e);
            } else {
                kVar.c(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            }
        }
    },
    AfterDoctypePublicIdentifier { // from class: org.jsoup.c.l.55
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == '\t' || e == '\n' || e == '\f' || e == '\r' || e == ' ') {
                kVar.f39250c = BetweenDoctypePublicAndSystemIdentifiers;
            } else if (e == '\"') {
                kVar.b(this);
                kVar.f39250c = DoctypeSystemIdentifier_doubleQuoted;
            } else if (e == '\'') {
                kVar.b(this);
                kVar.f39250c = DoctypeSystemIdentifier_singleQuoted;
            } else if (e == '>') {
                kVar.e();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                kVar.b(this);
                kVar.m.f = true;
                kVar.f39250c = BogusDoctype;
            } else {
                kVar.c(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            }
        }
    },
    BetweenDoctypePublicAndSystemIdentifiers { // from class: org.jsoup.c.l.57
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e != '\t' && e != '\n' && e != '\f' && e != '\r' && e != ' ') {
                if (e == '\"') {
                    kVar.b(this);
                    kVar.f39250c = DoctypeSystemIdentifier_doubleQuoted;
                } else if (e == '\'') {
                    kVar.b(this);
                    kVar.f39250c = DoctypeSystemIdentifier_singleQuoted;
                } else if (e == '>') {
                    kVar.e();
                    kVar.f39250c = Data;
                } else if (e != 65535) {
                    kVar.b(this);
                    kVar.m.f = true;
                    kVar.f39250c = BogusDoctype;
                } else {
                    kVar.c(this);
                    kVar.m.f = true;
                    kVar.e();
                    kVar.f39250c = Data;
                }
            }
        }
    },
    AfterDoctypeSystemKeyword { // from class: org.jsoup.c.l.58
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == '\t' || e == '\n' || e == '\f' || e == '\r' || e == ' ') {
                kVar.f39250c = BeforeDoctypeSystemIdentifier;
            } else if (e == '\"') {
                kVar.b(this);
                kVar.f39250c = DoctypeSystemIdentifier_doubleQuoted;
            } else if (e == '\'') {
                kVar.b(this);
                kVar.f39250c = DoctypeSystemIdentifier_singleQuoted;
            } else if (e == '>') {
                kVar.b(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                kVar.b(this);
                kVar.m.f = true;
                kVar.e();
            } else {
                kVar.c(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            }
        }
    },
    BeforeDoctypeSystemIdentifier { // from class: org.jsoup.c.l.59
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e != '\t' && e != '\n' && e != '\f' && e != '\r' && e != ' ') {
                if (e == '\"') {
                    kVar.f39250c = DoctypeSystemIdentifier_doubleQuoted;
                } else if (e == '\'') {
                    kVar.f39250c = DoctypeSystemIdentifier_singleQuoted;
                } else if (e == '>') {
                    kVar.b(this);
                    kVar.m.f = true;
                    kVar.e();
                    kVar.f39250c = Data;
                } else if (e != 65535) {
                    kVar.b(this);
                    kVar.m.f = true;
                    kVar.f39250c = BogusDoctype;
                } else {
                    kVar.c(this);
                    kVar.m.f = true;
                    kVar.e();
                    kVar.f39250c = Data;
                }
            }
        }
    },
    DoctypeSystemIdentifier_doubleQuoted { // from class: org.jsoup.c.l.60
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.m.e.append((char) 65533);
            } else if (e == '\"') {
                kVar.f39250c = AfterDoctypeSystemIdentifier;
            } else if (e == '>') {
                kVar.b(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                kVar.m.e.append(e);
            } else {
                kVar.c(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            }
        }
    },
    DoctypeSystemIdentifier_singleQuoted { // from class: org.jsoup.c.l.61
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == 0) {
                kVar.b(this);
                kVar.m.e.append((char) 65533);
            } else if (e == '\'') {
                kVar.f39250c = AfterDoctypeSystemIdentifier;
            } else if (e == '>') {
                kVar.b(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            } else if (e != 65535) {
                kVar.m.e.append(e);
            } else {
                kVar.c(this);
                kVar.m.f = true;
                kVar.e();
                kVar.f39250c = Data;
            }
        }
    },
    AfterDoctypeSystemIdentifier { // from class: org.jsoup.c.l.62
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e != '\t' && e != '\n' && e != '\f' && e != '\r' && e != ' ') {
                if (e == '>') {
                    kVar.e();
                    kVar.f39250c = Data;
                } else if (e != 65535) {
                    kVar.b(this);
                    kVar.f39250c = BogusDoctype;
                } else {
                    kVar.c(this);
                    kVar.m.f = true;
                    kVar.e();
                    kVar.f39250c = Data;
                }
            }
        }
    },
    BogusDoctype { // from class: org.jsoup.c.l.63
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            char e = aVar.e();
            if (e == '>') {
                kVar.e();
                kVar.f39250c = Data;
            } else if (e == 65535) {
                kVar.e();
                kVar.f39250c = Data;
            }
        }
    },
    CdataSection { // from class: org.jsoup.c.l.64
        @Override // org.jsoup.c.l
        final void read(k kVar, a aVar) {
            String str;
            int a2 = aVar.a("]]>");
            if (a2 != -1) {
                str = a.a(aVar.f39208a, aVar.g, aVar.e, a2);
                aVar.e += a2;
            } else if (aVar.f39210c - aVar.e < 3) {
                str = aVar.k();
            } else {
                int i = (aVar.f39210c - 3) + 1;
                char[] cArr = aVar.f39208a;
                String[] strArr = aVar.g;
                int i2 = aVar.e;
                str = a.a(cArr, strArr, i2, i - i2);
                aVar.e = i;
            }
            kVar.h.append(str);
            if (aVar.a("]]>") || aVar.c()) {
                kVar.a(new i.a(kVar.h.toString()));
                kVar.f39250c = Data;
            }
        }
    };
    
    private static final char eof = 65535;
    static final char nullChar = 0;
    private static final char replacementChar = 65533;
    static final char[] attributeSingleValueCharsSorted = {0, '&', '\''};
    static final char[] attributeDoubleValueCharsSorted = {0, '\"', '&'};
    static final char[] attributeNameCharsSorted = {0, '\t', '\n', '\f', '\r', ' ', '\"', '\'', '/', '<', '=', '>'};
    static final char[] attributeValueUnquoted = {0, '\t', '\n', '\f', '\r', ' ', '\"', '&', '\'', '<', '=', '>', '`'};
    private static final String replacementStr = "�";

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleDataDoubleEscapeTag(k kVar, a aVar, l lVar, l lVar2) {
        if (aVar.p()) {
            String l = aVar.l();
            kVar.h.append(l);
            kVar.a(l);
            return;
        }
        char e = aVar.e();
        if (e == '\t' || e == '\n' || e == '\f' || e == '\r' || e == ' ' || e == '/' || e == '>') {
            if (kVar.h.toString().equals("script")) {
                kVar.f39250c = lVar;
            } else {
                kVar.f39250c = lVar2;
            }
            kVar.a(e);
            return;
        }
        aVar.f();
        kVar.f39250c = lVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void handleDataEndTag(org.jsoup.c.k r4, org.jsoup.c.a r5, org.jsoup.c.l r6) {
        /*
            r0 = r5
            boolean r0 = r0.p()
            if (r0 == 0) goto L_0x001e
            r0 = r5
            java.lang.String r0 = r0.l()
            r5 = r0
            r0 = r4
            org.jsoup.c.i$h r0 = r0.i
            r1 = r5
            r0.b(r1)
            r0 = r4
            java.lang.StringBuilder r0 = r0.h
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            return
        L_0x001e:
            r0 = 0
            r7 = r0
            r0 = r4
            boolean r0 = r0.f()
            if (r0 == 0) goto L_0x0094
            r0 = r5
            boolean r0 = r0.c()
            if (r0 != 0) goto L_0x0094
            r0 = r5
            char r0 = r0.e()
            r8 = r0
            r0 = r8
            r1 = 9
            if (r0 == r1) goto L_0x008a
            r0 = r8
            r1 = 10
            if (r0 == r1) goto L_0x008a
            r0 = r8
            r1 = 12
            if (r0 == r1) goto L_0x008a
            r0 = r8
            r1 = 13
            if (r0 == r1) goto L_0x008a
            r0 = r8
            r1 = 32
            if (r0 == r1) goto L_0x008a
            r0 = r8
            r1 = 47
            if (r0 == r1) goto L_0x0080
            r0 = r8
            r1 = 62
            if (r0 == r1) goto L_0x0072
            r0 = r4
            java.lang.StringBuilder r0 = r0.h
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            goto L_0x0094
        L_0x0072:
            r0 = r4
            r0.a()
            r0 = r4
            org.jsoup.c.l r1 = org.jsoup.c.l.Data
            r0.f39250c = r1
            goto L_0x0096
        L_0x0080:
            r0 = r4
            org.jsoup.c.l r1 = org.jsoup.c.l.SelfClosingStartTag
            r0.f39250c = r1
            goto L_0x0096
        L_0x008a:
            r0 = r4
            org.jsoup.c.l r1 = org.jsoup.c.l.BeforeAttributeName
            r0.f39250c = r1
            goto L_0x0096
        L_0x0094:
            r0 = 1
            r7 = r0
        L_0x0096:
            r0 = r7
            if (r0 == 0) goto L_0x00be
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "</"
            r1.<init>(r2)
            r5 = r0
            r0 = r5
            r1 = r4
            java.lang.StringBuilder r1 = r1.h
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r5
            java.lang.String r1 = r1.toString()
            r0.a(r1)
            r0 = r4
            r1 = r6
            r0.f39250c = r1
        L_0x00be:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.c.l.handleDataEndTag(org.jsoup.c.k, org.jsoup.c.a, org.jsoup.c.l):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readCharRef(k kVar, l lVar) {
        int[] a2 = kVar.a(null, false);
        if (a2 == null) {
            kVar.a('&');
        } else {
            kVar.a(new String(a2, 0, a2.length));
        }
        kVar.f39250c = lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readEndTag(k kVar, a aVar, l lVar, l lVar2) {
        if (aVar.p()) {
            kVar.a(false);
            kVar.f39250c = lVar;
            return;
        }
        kVar.a("</");
        kVar.f39250c = lVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readRawData(k kVar, a aVar, l lVar, l lVar2) {
        char c2;
        char d2 = aVar.d();
        if (d2 == 0) {
            kVar.b(lVar);
            aVar.g();
            kVar.a((char) 65533);
        } else if (d2 == '<') {
            kVar.a(lVar2);
        } else if (d2 != 65535) {
            int i = aVar.e;
            int i2 = aVar.f39210c;
            char[] cArr = aVar.f39208a;
            int i3 = i;
            while (i3 < i2 && (c2 = cArr[i3]) != 0 && c2 != '<') {
                i3++;
            }
            aVar.e = i3;
            kVar.a(i3 > i ? a.a(aVar.f39208a, aVar.g, i, i3 - i) : "");
        } else {
            kVar.a(new i.e());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void read(k kVar, a aVar);
}
