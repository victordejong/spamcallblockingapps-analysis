package org.jsoup.p592c;

import java.util.Locale;
import org.jsoup.p592c.AbstractC20816i;
/* renamed from: org.jsoup.c.l */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/l.class */
public enum EnumC20829l {
    Data { // from class: org.jsoup.c.l.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m470d = c20783a.m470d();
            if (m470d == 0) {
                c20828k.m336b(this);
                c20828k.m344a(c20783a.m467e());
            } else if (m470d == '&') {
                c20828k.m340a(CharacterReferenceInData);
            } else if (m470d == '<') {
                c20828k.m340a(TagOpen);
            } else if (m470d != 65535) {
                c20828k.m342a(c20783a.m463i());
            } else {
                c20828k.m341a(new AbstractC20816i.C20822e());
            }
        }
    },
    CharacterReferenceInData { // from class: org.jsoup.c.l.12
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            EnumC20829l.readCharRef(c20828k, Data);
        }
    },
    Rcdata { // from class: org.jsoup.c.l.23
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m470d = c20783a.m470d();
            if (m470d == 0) {
                c20828k.m336b(this);
                c20783a.m465g();
                c20828k.m344a((char) 65533);
            } else if (m470d == '&') {
                c20828k.m340a(CharacterReferenceInRcdata);
            } else if (m470d == '<') {
                c20828k.m340a(RcdataLessthanSign);
            } else if (m470d != 65535) {
                c20828k.m342a(c20783a.m463i());
            } else {
                c20828k.m341a(new AbstractC20816i.C20822e());
            }
        }
    },
    CharacterReferenceInRcdata { // from class: org.jsoup.c.l.34
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            EnumC20829l.readCharRef(c20828k, Rcdata);
        }
    },
    Rawtext { // from class: org.jsoup.c.l.45
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            EnumC20829l.readRawData(c20828k, c20783a, this, RawtextLessthanSign);
        }
    },
    ScriptData { // from class: org.jsoup.c.l.56
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            EnumC20829l.readRawData(c20828k, c20783a, this, ScriptDataLessthanSign);
        }
    },
    PLAINTEXT { // from class: org.jsoup.c.l.65
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m470d = c20783a.m470d();
            if (m470d == 0) {
                c20828k.m336b(this);
                c20783a.m465g();
                c20828k.m344a((char) 65533);
            } else if (m470d != 65535) {
                c20828k.m342a(c20783a.m484a((char) 0));
            } else {
                c20828k.m341a(new AbstractC20816i.C20822e());
            }
        }
    },
    TagOpen { // from class: org.jsoup.c.l.66
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m470d = c20783a.m470d();
            if (m470d == '!') {
                c20828k.m340a(MarkupDeclarationOpen);
            } else if (m470d == '/') {
                c20828k.m340a(EndTagOpen);
            } else if (m470d == '?') {
                c20828k.m335c();
                c20828k.m340a(BogusComment);
            } else if (c20783a.m456p()) {
                c20828k.m339a(true);
                c20828k.f67420c = TagName;
            } else {
                c20828k.m336b(this);
                c20828k.m344a('<');
                c20828k.f67420c = Data;
            }
        }
    },
    EndTagOpen { // from class: org.jsoup.c.l.67
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (c20783a.m474c()) {
                c20828k.m333c(this);
                c20828k.m342a("</");
                c20828k.f67420c = Data;
            } else if (c20783a.m456p()) {
                c20828k.m339a(false);
                c20828k.f67420c = TagName;
            } else if (c20783a.m477b('>')) {
                c20828k.m336b(this);
                c20828k.m340a(Data);
            } else {
                c20828k.m336b(this);
                c20828k.m335c();
                c20828k.m340a(BogusComment);
            }
        }
    },
    TagName { // from class: org.jsoup.c.l.2
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            c20828k.f67426i.m371b(c20783a.m462j());
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.f67426i.m371b(EnumC20829l.replacementStr);
                return;
            }
            if (m467e != ' ') {
                if (m467e == '/') {
                    c20828k.f67420c = SelfClosingStartTag;
                    return;
                }
                if (m467e == '<') {
                    c20783a.m466f();
                    c20828k.m336b(this);
                } else if (m467e != '>') {
                    if (m467e == 65535) {
                        c20828k.m333c(this);
                        c20828k.f67420c = Data;
                        return;
                    } else if (m467e != '\t' && m467e != '\n' && m467e != '\f' && m467e != '\r') {
                        c20828k.f67426i.m375a(m467e);
                        return;
                    }
                }
                c20828k.m345a();
                c20828k.f67420c = Data;
                return;
            }
            c20828k.f67420c = BeforeAttributeName;
        }
    },
    RcdataLessthanSign { // from class: org.jsoup.c.l.3
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (c20783a.m477b('/')) {
                AbstractC20816i.m388a(c20828k.f67425h);
                c20828k.m340a(RCDATAEndTagOpen);
                return;
            }
            if (c20783a.m456p() && c20828k.f67432o != null) {
                String str = "</" + c20828k.f67432o;
                if (!(c20783a.m483a((CharSequence) str.toLowerCase(Locale.ENGLISH)) >= 0 || c20783a.m483a((CharSequence) str.toUpperCase(Locale.ENGLISH)) >= 0)) {
                    c20828k.f67426i = c20828k.m339a(false).m374a(c20828k.f67432o);
                    c20828k.m345a();
                    c20783a.m466f();
                    c20828k.f67420c = Data;
                    return;
                }
            }
            c20828k.m342a("<");
            c20828k.f67420c = Rcdata;
        }
    },
    RCDATAEndTagOpen { // from class: org.jsoup.c.l.4
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (!c20783a.m456p()) {
                c20828k.m342a("</");
                c20828k.f67420c = Rcdata;
                return;
            }
            c20828k.m339a(false);
            c20828k.f67426i.m375a(c20783a.m470d());
            c20828k.f67425h.append(c20783a.m470d());
            c20828k.m340a(RCDATAEndTagName);
        }
    },
    RCDATAEndTagName { // from class: org.jsoup.c.l.5
        private void anythingElse(C20828k c20828k, C20783a c20783a) {
            c20828k.m342a("</" + c20828k.f67425h.toString());
            c20783a.m466f();
            c20828k.f67420c = Rcdata;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (c20783a.m456p()) {
                String m460l = c20783a.m460l();
                c20828k.f67426i.m371b(m460l);
                c20828k.f67425h.append(m460l);
                return;
            }
            char m467e = c20783a.m467e();
            if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r' || m467e == ' ') {
                if (c20828k.m330f()) {
                    c20828k.f67420c = BeforeAttributeName;
                } else {
                    anythingElse(c20828k, c20783a);
                }
            } else if (m467e == '/') {
                if (c20828k.m330f()) {
                    c20828k.f67420c = SelfClosingStartTag;
                } else {
                    anythingElse(c20828k, c20783a);
                }
            } else if (m467e != '>') {
                anythingElse(c20828k, c20783a);
            } else if (!c20828k.m330f()) {
                anythingElse(c20828k, c20783a);
            } else {
                c20828k.m345a();
                c20828k.f67420c = Data;
            }
        }
    },
    RawtextLessthanSign { // from class: org.jsoup.c.l.6
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (c20783a.m477b('/')) {
                AbstractC20816i.m388a(c20828k.f67425h);
                c20828k.m340a(RawtextEndTagOpen);
                return;
            }
            c20828k.m344a('<');
            c20828k.f67420c = Rawtext;
        }
    },
    RawtextEndTagOpen { // from class: org.jsoup.c.l.7
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            EnumC20829l.readEndTag(c20828k, c20783a, RawtextEndTagName, Rawtext);
        }
    },
    RawtextEndTagName { // from class: org.jsoup.c.l.8
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            EnumC20829l.handleDataEndTag(c20828k, c20783a, Rawtext);
        }
    },
    ScriptDataLessthanSign { // from class: org.jsoup.c.l.9
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == '!') {
                c20828k.m342a("<!");
                c20828k.f67420c = ScriptDataEscapeStart;
            } else if (m467e == '/') {
                AbstractC20816i.m388a(c20828k.f67425h);
                c20828k.f67420c = ScriptDataEndTagOpen;
            } else if (m467e != 65535) {
                c20828k.m342a("<");
                c20783a.m466f();
                c20828k.f67420c = ScriptData;
            } else {
                c20828k.m342a("<");
                c20828k.m333c(this);
                c20828k.f67420c = Data;
            }
        }
    },
    ScriptDataEndTagOpen { // from class: org.jsoup.c.l.10
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            EnumC20829l.readEndTag(c20828k, c20783a, ScriptDataEndTagName, ScriptData);
        }
    },
    ScriptDataEndTagName { // from class: org.jsoup.c.l.11
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            EnumC20829l.handleDataEndTag(c20828k, c20783a, ScriptData);
        }
    },
    ScriptDataEscapeStart { // from class: org.jsoup.c.l.13
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (!c20783a.m477b('-')) {
                c20828k.f67420c = ScriptData;
                return;
            }
            c20828k.m344a('-');
            c20828k.m340a(ScriptDataEscapeStartDash);
        }
    },
    ScriptDataEscapeStartDash { // from class: org.jsoup.c.l.14
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (!c20783a.m477b('-')) {
                c20828k.f67420c = ScriptData;
                return;
            }
            c20828k.m344a('-');
            c20828k.m340a(ScriptDataEscapedDashDash);
        }
    },
    ScriptDataEscaped { // from class: org.jsoup.c.l.15
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (c20783a.m474c()) {
                c20828k.m333c(this);
                c20828k.f67420c = Data;
                return;
            }
            char m470d = c20783a.m470d();
            if (m470d == 0) {
                c20828k.m336b(this);
                c20783a.m465g();
                c20828k.m344a((char) 65533);
            } else if (m470d == '-') {
                c20828k.m344a('-');
                c20828k.m340a(ScriptDataEscapedDash);
            } else if (m470d != '<') {
                c20828k.m342a(c20783a.m481a('-', '<', 0));
            } else {
                c20828k.m340a(ScriptDataEscapedLessthanSign);
            }
        }
    },
    ScriptDataEscapedDash { // from class: org.jsoup.c.l.16
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (c20783a.m474c()) {
                c20828k.m333c(this);
                c20828k.f67420c = Data;
                return;
            }
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.m344a((char) 65533);
                c20828k.f67420c = ScriptDataEscaped;
            } else if (m467e == '-') {
                c20828k.m344a(m467e);
                c20828k.f67420c = ScriptDataEscapedDashDash;
            } else if (m467e == '<') {
                c20828k.f67420c = ScriptDataEscapedLessthanSign;
            } else {
                c20828k.m344a(m467e);
                c20828k.f67420c = ScriptDataEscaped;
            }
        }
    },
    ScriptDataEscapedDashDash { // from class: org.jsoup.c.l.17
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (c20783a.m474c()) {
                c20828k.m333c(this);
                c20828k.f67420c = Data;
                return;
            }
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.m344a((char) 65533);
                c20828k.f67420c = ScriptDataEscaped;
            } else if (m467e == '-') {
                c20828k.m344a(m467e);
            } else if (m467e == '<') {
                c20828k.f67420c = ScriptDataEscapedLessthanSign;
            } else if (m467e != '>') {
                c20828k.m344a(m467e);
                c20828k.f67420c = ScriptDataEscaped;
            } else {
                c20828k.m344a(m467e);
                c20828k.f67420c = ScriptData;
            }
        }
    },
    ScriptDataEscapedLessthanSign { // from class: org.jsoup.c.l.18
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (c20783a.m456p()) {
                AbstractC20816i.m388a(c20828k.f67425h);
                c20828k.f67425h.append(c20783a.m470d());
                c20828k.m342a("<" + c20783a.m470d());
                c20828k.m340a(ScriptDataDoubleEscapeStart);
            } else if (c20783a.m477b('/')) {
                AbstractC20816i.m388a(c20828k.f67425h);
                c20828k.m340a(ScriptDataEscapedEndTagOpen);
            } else {
                c20828k.m344a('<');
                c20828k.f67420c = ScriptDataEscaped;
            }
        }
    },
    ScriptDataEscapedEndTagOpen { // from class: org.jsoup.c.l.19
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (!c20783a.m456p()) {
                c20828k.m342a("</");
                c20828k.f67420c = ScriptDataEscaped;
                return;
            }
            c20828k.m339a(false);
            c20828k.f67426i.m375a(c20783a.m470d());
            c20828k.f67425h.append(c20783a.m470d());
            c20828k.m340a(ScriptDataEscapedEndTagName);
        }
    },
    ScriptDataEscapedEndTagName { // from class: org.jsoup.c.l.20
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            EnumC20829l.handleDataEndTag(c20828k, c20783a, ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscapeStart { // from class: org.jsoup.c.l.21
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            EnumC20829l.handleDataDoubleEscapeTag(c20828k, c20783a, ScriptDataDoubleEscaped, ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscaped { // from class: org.jsoup.c.l.22
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m470d = c20783a.m470d();
            if (m470d == 0) {
                c20828k.m336b(this);
                c20783a.m465g();
                c20828k.m344a((char) 65533);
            } else if (m470d == '-') {
                c20828k.m344a(m470d);
                c20828k.m340a(ScriptDataDoubleEscapedDash);
            } else if (m470d == '<') {
                c20828k.m344a(m470d);
                c20828k.m340a(ScriptDataDoubleEscapedLessthanSign);
            } else if (m470d != 65535) {
                c20828k.m342a(c20783a.m481a('-', '<', 0));
            } else {
                c20828k.m333c(this);
                c20828k.f67420c = Data;
            }
        }
    },
    ScriptDataDoubleEscapedDash { // from class: org.jsoup.c.l.24
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.m344a((char) 65533);
                c20828k.f67420c = ScriptDataDoubleEscaped;
            } else if (m467e == '-') {
                c20828k.m344a(m467e);
                c20828k.f67420c = ScriptDataDoubleEscapedDashDash;
            } else if (m467e == '<') {
                c20828k.m344a(m467e);
                c20828k.f67420c = ScriptDataDoubleEscapedLessthanSign;
            } else if (m467e != 65535) {
                c20828k.m344a(m467e);
                c20828k.f67420c = ScriptDataDoubleEscaped;
            } else {
                c20828k.m333c(this);
                c20828k.f67420c = Data;
            }
        }
    },
    ScriptDataDoubleEscapedDashDash { // from class: org.jsoup.c.l.25
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.m344a((char) 65533);
                c20828k.f67420c = ScriptDataDoubleEscaped;
            } else if (m467e == '-') {
                c20828k.m344a(m467e);
            } else if (m467e == '<') {
                c20828k.m344a(m467e);
                c20828k.f67420c = ScriptDataDoubleEscapedLessthanSign;
            } else if (m467e == '>') {
                c20828k.m344a(m467e);
                c20828k.f67420c = ScriptData;
            } else if (m467e != 65535) {
                c20828k.m344a(m467e);
                c20828k.f67420c = ScriptDataDoubleEscaped;
            } else {
                c20828k.m333c(this);
                c20828k.f67420c = Data;
            }
        }
    },
    ScriptDataDoubleEscapedLessthanSign { // from class: org.jsoup.c.l.26
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (!c20783a.m477b('/')) {
                c20828k.f67420c = ScriptDataDoubleEscaped;
                return;
            }
            c20828k.m344a('/');
            AbstractC20816i.m388a(c20828k.f67425h);
            c20828k.m340a(ScriptDataDoubleEscapeEnd);
        }
    },
    ScriptDataDoubleEscapeEnd { // from class: org.jsoup.c.l.27
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            EnumC20829l.handleDataDoubleEscapeTag(c20828k, c20783a, ScriptDataEscaped, ScriptDataDoubleEscaped);
        }
    },
    BeforeAttributeName { // from class: org.jsoup.c.l.28
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20783a.m466f();
                c20828k.m336b(this);
                c20828k.f67426i.m366i();
                c20828k.f67420c = AttributeName;
            } else if (m467e == ' ') {
            } else {
                if (m467e != '\"' && m467e != '\'') {
                    if (m467e == '/') {
                        c20828k.f67420c = SelfClosingStartTag;
                        return;
                    } else if (m467e == 65535) {
                        c20828k.m333c(this);
                        c20828k.f67420c = Data;
                        return;
                    } else if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r') {
                        return;
                    } else {
                        switch (m467e) {
                            case '<':
                                c20783a.m466f();
                                c20828k.m336b(this);
                                c20828k.m345a();
                                c20828k.f67420c = Data;
                                return;
                            case '=':
                                break;
                            case '>':
                                c20828k.m345a();
                                c20828k.f67420c = Data;
                                return;
                            default:
                                c20828k.f67426i.m366i();
                                c20783a.m466f();
                                c20828k.f67420c = AttributeName;
                                return;
                        }
                    }
                }
                c20828k.m336b(this);
                c20828k.f67426i.m366i();
                c20828k.f67426i.m372b(m467e);
                c20828k.f67420c = AttributeName;
            }
        }
    },
    AttributeName { // from class: org.jsoup.c.l.29
        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            c20828k.f67426i.m369c(c20783a.m475b(attributeNameCharsSorted));
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67426i.m372b((char) 65533);
                return;
            }
            if (m467e != ' ') {
                if (m467e != '\"' && m467e != '\'') {
                    if (m467e == '/') {
                        c20828k.f67420c = SelfClosingStartTag;
                        return;
                    } else if (m467e == 65535) {
                        c20828k.m333c(this);
                        c20828k.f67420c = Data;
                        return;
                    } else if (m467e != '\t' && m467e != '\n' && m467e != '\f' && m467e != '\r') {
                        switch (m467e) {
                            case '=':
                                c20828k.f67420c = BeforeAttributeValue;
                                return;
                            case '>':
                                c20828k.m345a();
                                c20828k.f67420c = Data;
                                return;
                        }
                        c20828k.f67426i.m372b(m467e);
                        return;
                    }
                }
                c20828k.m336b(this);
                c20828k.f67426i.m372b(m467e);
                return;
            }
            c20828k.f67420c = AfterAttributeName;
        }
    },
    AfterAttributeName { // from class: org.jsoup.c.l.30
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67426i.m372b((char) 65533);
                c20828k.f67420c = AttributeName;
            } else if (m467e == ' ') {
            } else {
                if (m467e != '\"' && m467e != '\'') {
                    if (m467e == '/') {
                        c20828k.f67420c = SelfClosingStartTag;
                        return;
                    } else if (m467e == 65535) {
                        c20828k.m333c(this);
                        c20828k.f67420c = Data;
                        return;
                    } else if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r') {
                        return;
                    } else {
                        switch (m467e) {
                            case '<':
                                break;
                            case '=':
                                c20828k.f67420c = BeforeAttributeValue;
                                return;
                            case '>':
                                c20828k.m345a();
                                c20828k.f67420c = Data;
                                return;
                            default:
                                c20828k.f67426i.m366i();
                                c20783a.m466f();
                                c20828k.f67420c = AttributeName;
                                return;
                        }
                    }
                }
                c20828k.m336b(this);
                c20828k.f67426i.m366i();
                c20828k.f67426i.m372b(m467e);
                c20828k.f67420c = AttributeName;
            }
        }
    },
    BeforeAttributeValue { // from class: org.jsoup.c.l.31
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67426i.m370c((char) 65533);
                c20828k.f67420c = AttributeValue_unquoted;
            } else if (m467e == ' ') {
            } else {
                if (m467e == '\"') {
                    c20828k.f67420c = AttributeValue_doubleQuoted;
                    return;
                }
                if (m467e != '`') {
                    if (m467e == 65535) {
                        c20828k.m333c(this);
                        c20828k.m345a();
                        c20828k.f67420c = Data;
                        return;
                    } else if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r') {
                        return;
                    } else {
                        if (m467e == '&') {
                            c20783a.m466f();
                            c20828k.f67420c = AttributeValue_unquoted;
                            return;
                        } else if (m467e == '\'') {
                            c20828k.f67420c = AttributeValue_singleQuoted;
                            return;
                        } else {
                            switch (m467e) {
                                case '<':
                                case '=':
                                    break;
                                case '>':
                                    c20828k.m336b(this);
                                    c20828k.m345a();
                                    c20828k.f67420c = Data;
                                    return;
                                default:
                                    c20783a.m466f();
                                    c20828k.f67420c = AttributeValue_unquoted;
                                    return;
                            }
                        }
                    }
                }
                c20828k.m336b(this);
                c20828k.f67426i.m370c(m467e);
                c20828k.f67420c = AttributeValue_unquoted;
            }
        }
    },
    AttributeValue_doubleQuoted { // from class: org.jsoup.c.l.32
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            String m475b = c20783a.m475b(attributeDoubleValueCharsSorted);
            if (m475b.length() > 0) {
                c20828k.f67426i.m368d(m475b);
            } else {
                c20828k.f67426i.f67409e = true;
            }
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67426i.m370c((char) 65533);
            } else if (m467e == '\"') {
                c20828k.f67420c = AfterAttributeValue_quoted;
            } else if (m467e != '&') {
                if (m467e != 65535) {
                    c20828k.f67426i.m370c(m467e);
                    return;
                }
                c20828k.m333c(this);
                c20828k.f67420c = Data;
            } else {
                int[] m343a = c20828k.m343a('\"', true);
                if (m343a != null) {
                    c20828k.f67426i.m373a(m343a);
                } else {
                    c20828k.f67426i.m370c('&');
                }
            }
        }
    },
    AttributeValue_singleQuoted { // from class: org.jsoup.c.l.33
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            String m475b = c20783a.m475b(attributeSingleValueCharsSorted);
            if (m475b.length() > 0) {
                c20828k.f67426i.m368d(m475b);
            } else {
                c20828k.f67426i.f67409e = true;
            }
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67426i.m370c((char) 65533);
            } else if (m467e == 65535) {
                c20828k.m333c(this);
                c20828k.f67420c = Data;
            } else if (m467e != '&') {
                if (m467e != '\'') {
                    c20828k.f67426i.m370c(m467e);
                } else {
                    c20828k.f67420c = AfterAttributeValue_quoted;
                }
            } else {
                int[] m343a = c20828k.m343a('\'', true);
                if (m343a != null) {
                    c20828k.f67426i.m373a(m343a);
                } else {
                    c20828k.f67426i.m370c('&');
                }
            }
        }
    },
    AttributeValue_unquoted { // from class: org.jsoup.c.l.35
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            String m475b = c20783a.m475b(attributeValueUnquoted);
            if (m475b.length() > 0) {
                c20828k.f67426i.m368d(m475b);
            }
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67426i.m370c((char) 65533);
                return;
            }
            if (m467e != ' ') {
                if (m467e != '\"' && m467e != '`') {
                    if (m467e == 65535) {
                        c20828k.m333c(this);
                        c20828k.f67420c = Data;
                        return;
                    } else if (m467e != '\t' && m467e != '\n' && m467e != '\f' && m467e != '\r') {
                        if (m467e == '&') {
                            int[] m343a = c20828k.m343a('>', true);
                            if (m343a != null) {
                                c20828k.f67426i.m373a(m343a);
                                return;
                            } else {
                                c20828k.f67426i.m370c('&');
                                return;
                            }
                        } else if (m467e != '\'') {
                            switch (m467e) {
                                case '>':
                                    c20828k.m345a();
                                    c20828k.f67420c = Data;
                                    return;
                                case '<':
                                case '=':
                                    c20828k.m336b(this);
                                    break;
                            }
                            c20828k.f67426i.m370c(m467e);
                            return;
                        }
                    }
                }
                c20828k.m336b(this);
                c20828k.f67426i.m370c(m467e);
                return;
            }
            c20828k.f67420c = BeforeAttributeName;
        }
    },
    AfterAttributeValue_quoted { // from class: org.jsoup.c.l.36
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r' || m467e == ' ') {
                c20828k.f67420c = BeforeAttributeName;
            } else if (m467e == '/') {
                c20828k.f67420c = SelfClosingStartTag;
            } else if (m467e == '>') {
                c20828k.m345a();
                c20828k.f67420c = Data;
            } else if (m467e == 65535) {
                c20828k.m333c(this);
                c20828k.f67420c = Data;
            } else {
                c20783a.m466f();
                c20828k.m336b(this);
                c20828k.f67420c = BeforeAttributeName;
            }
        }
    },
    SelfClosingStartTag { // from class: org.jsoup.c.l.37
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == '>') {
                c20828k.f67426i.f67410f = true;
                c20828k.m345a();
                c20828k.f67420c = Data;
            } else if (m467e == 65535) {
                c20828k.m333c(this);
                c20828k.f67420c = Data;
            } else {
                c20783a.m466f();
                c20828k.m336b(this);
                c20828k.f67420c = BeforeAttributeName;
            }
        }
    },
    BogusComment { // from class: org.jsoup.c.l.38
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            c20783a.m466f();
            c20828k.f67431n.m380a(c20783a.m484a('>'));
            char m467e = c20783a.m467e();
            if (m467e == '>' || m467e == 65535) {
                c20828k.m338b();
                c20828k.f67420c = Data;
            }
        }
    },
    MarkupDeclarationOpen { // from class: org.jsoup.c.l.39
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (c20783a.m482a("--")) {
                c20828k.f67431n.mo376a();
                c20828k.f67420c = CommentStart;
            } else if (c20783a.m476b("DOCTYPE")) {
                c20828k.f67420c = Doctype;
            } else if (c20783a.m482a("[CDATA[")) {
                AbstractC20816i.m388a(c20828k.f67425h);
                c20828k.f67420c = CdataSection;
            } else {
                c20828k.m336b(this);
                c20828k.m335c();
                c20828k.m340a(BogusComment);
            }
        }
    },
    CommentStart { // from class: org.jsoup.c.l.40
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67431n.m381a((char) 65533);
                c20828k.f67420c = Comment;
            } else if (m467e == '-') {
                c20828k.f67420c = CommentStartDash;
            } else if (m467e == '>') {
                c20828k.m336b(this);
                c20828k.m338b();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20783a.m466f();
                c20828k.f67420c = Comment;
            } else {
                c20828k.m333c(this);
                c20828k.m338b();
                c20828k.f67420c = Data;
            }
        }
    },
    CommentStartDash { // from class: org.jsoup.c.l.41
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67431n.m381a((char) 65533);
                c20828k.f67420c = Comment;
            } else if (m467e == '-') {
                c20828k.f67420c = CommentStartDash;
            } else if (m467e == '>') {
                c20828k.m336b(this);
                c20828k.m338b();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.f67431n.m381a(m467e);
                c20828k.f67420c = Comment;
            } else {
                c20828k.m333c(this);
                c20828k.m338b();
                c20828k.f67420c = Data;
            }
        }
    },
    Comment { // from class: org.jsoup.c.l.42
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m470d = c20783a.m470d();
            if (m470d == 0) {
                c20828k.m336b(this);
                c20783a.m465g();
                c20828k.f67431n.m381a((char) 65533);
            } else if (m470d == '-') {
                c20828k.m340a(CommentEndDash);
            } else if (m470d != 65535) {
                c20828k.f67431n.m380a(c20783a.m481a('-', 0));
            } else {
                c20828k.m333c(this);
                c20828k.m338b();
                c20828k.f67420c = Data;
            }
        }
    },
    CommentEndDash { // from class: org.jsoup.c.l.43
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67431n.m381a('-').m381a((char) 65533);
                c20828k.f67420c = Comment;
            } else if (m467e == '-') {
                c20828k.f67420c = CommentEnd;
            } else if (m467e != 65535) {
                c20828k.f67431n.m381a('-').m381a(m467e);
                c20828k.f67420c = Comment;
            } else {
                c20828k.m333c(this);
                c20828k.m338b();
                c20828k.f67420c = Data;
            }
        }
    },
    CommentEnd { // from class: org.jsoup.c.l.44
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67431n.m380a("--").m381a((char) 65533);
                c20828k.f67420c = Comment;
            } else if (m467e == '!') {
                c20828k.m336b(this);
                c20828k.f67420c = CommentEndBang;
            } else if (m467e == '-') {
                c20828k.m336b(this);
                c20828k.f67431n.m381a('-');
            } else if (m467e == '>') {
                c20828k.m338b();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.m336b(this);
                c20828k.f67431n.m380a("--").m381a(m467e);
                c20828k.f67420c = Comment;
            } else {
                c20828k.m333c(this);
                c20828k.m338b();
                c20828k.f67420c = Data;
            }
        }
    },
    CommentEndBang { // from class: org.jsoup.c.l.46
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67431n.m380a("--!").m381a((char) 65533);
                c20828k.f67420c = Comment;
            } else if (m467e == '-') {
                c20828k.f67431n.m380a("--!");
                c20828k.f67420c = CommentEndDash;
            } else if (m467e == '>') {
                c20828k.m338b();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.f67431n.m380a("--!").m381a(m467e);
                c20828k.f67420c = Comment;
            } else {
                c20828k.m333c(this);
                c20828k.m338b();
                c20828k.f67420c = Data;
            }
        }
    },
    Doctype { // from class: org.jsoup.c.l.47
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r' || m467e == ' ') {
                c20828k.f67420c = BeforeDoctypeName;
                return;
            }
            if (m467e != '>') {
                if (m467e != 65535) {
                    c20828k.m336b(this);
                    c20828k.f67420c = BeforeDoctypeName;
                    return;
                }
                c20828k.m333c(this);
            }
            c20828k.m336b(this);
            c20828k.m332d();
            c20828k.f67430m.f67405f = true;
            c20828k.m331e();
            c20828k.f67420c = Data;
        }
    },
    BeforeDoctypeName { // from class: org.jsoup.c.l.48
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (c20783a.m456p()) {
                c20828k.m332d();
                c20828k.f67420c = DoctypeName;
                return;
            }
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.m332d();
                c20828k.f67430m.f67401b.append((char) 65533);
                c20828k.f67420c = DoctypeName;
            } else if (m467e == ' ') {
            } else {
                if (m467e == 65535) {
                    c20828k.m333c(this);
                    c20828k.m332d();
                    c20828k.f67430m.f67405f = true;
                    c20828k.m331e();
                    c20828k.f67420c = Data;
                } else if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r') {
                } else {
                    c20828k.m332d();
                    c20828k.f67430m.f67401b.append(m467e);
                    c20828k.f67420c = DoctypeName;
                }
            }
        }
    },
    DoctypeName { // from class: org.jsoup.c.l.49
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (c20783a.m456p()) {
                c20828k.f67430m.f67401b.append(c20783a.m460l());
                return;
            }
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67430m.f67401b.append((char) 65533);
                return;
            }
            if (m467e != ' ') {
                if (m467e == '>') {
                    c20828k.m331e();
                    c20828k.f67420c = Data;
                    return;
                } else if (m467e == 65535) {
                    c20828k.m333c(this);
                    c20828k.f67430m.f67405f = true;
                    c20828k.m331e();
                    c20828k.f67420c = Data;
                    return;
                } else if (m467e != '\t' && m467e != '\n' && m467e != '\f' && m467e != '\r') {
                    c20828k.f67430m.f67401b.append(m467e);
                    return;
                }
            }
            c20828k.f67420c = AfterDoctypeName;
        }
    },
    AfterDoctypeName { // from class: org.jsoup.c.l.50
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            if (c20783a.m474c()) {
                c20828k.m333c(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (c20783a.m471c('\t', '\n', '\r', '\f', ' ')) {
                c20783a.m465g();
            } else if (c20783a.m477b('>')) {
                c20828k.m331e();
                c20828k.m340a(Data);
            } else if (c20783a.m476b("PUBLIC")) {
                c20828k.f67430m.f67402c = "PUBLIC";
                c20828k.f67420c = AfterDoctypePublicKeyword;
            } else if (c20783a.m476b("SYSTEM")) {
                c20828k.f67430m.f67402c = "SYSTEM";
                c20828k.f67420c = AfterDoctypeSystemKeyword;
            } else {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m340a(BogusDoctype);
            }
        }
    },
    AfterDoctypePublicKeyword { // from class: org.jsoup.c.l.51
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r' || m467e == ' ') {
                c20828k.f67420c = BeforeDoctypePublicIdentifier;
            } else if (m467e == '\"') {
                c20828k.m336b(this);
                c20828k.f67420c = DoctypePublicIdentifier_doubleQuoted;
            } else if (m467e == '\'') {
                c20828k.m336b(this);
                c20828k.f67420c = DoctypePublicIdentifier_singleQuoted;
            } else if (m467e == '>') {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.f67420c = BogusDoctype;
            } else {
                c20828k.m333c(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            }
        }
    },
    BeforeDoctypePublicIdentifier { // from class: org.jsoup.c.l.52
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r' || m467e == ' ') {
                return;
            }
            if (m467e == '\"') {
                c20828k.f67420c = DoctypePublicIdentifier_doubleQuoted;
            } else if (m467e == '\'') {
                c20828k.f67420c = DoctypePublicIdentifier_singleQuoted;
            } else if (m467e == '>') {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.f67420c = BogusDoctype;
            } else {
                c20828k.m333c(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            }
        }
    },
    DoctypePublicIdentifier_doubleQuoted { // from class: org.jsoup.c.l.53
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67430m.f67403d.append((char) 65533);
            } else if (m467e == '\"') {
                c20828k.f67420c = AfterDoctypePublicIdentifier;
            } else if (m467e == '>') {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.f67430m.f67403d.append(m467e);
            } else {
                c20828k.m333c(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            }
        }
    },
    DoctypePublicIdentifier_singleQuoted { // from class: org.jsoup.c.l.54
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67430m.f67403d.append((char) 65533);
            } else if (m467e == '\'') {
                c20828k.f67420c = AfterDoctypePublicIdentifier;
            } else if (m467e == '>') {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.f67430m.f67403d.append(m467e);
            } else {
                c20828k.m333c(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            }
        }
    },
    AfterDoctypePublicIdentifier { // from class: org.jsoup.c.l.55
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r' || m467e == ' ') {
                c20828k.f67420c = BetweenDoctypePublicAndSystemIdentifiers;
            } else if (m467e == '\"') {
                c20828k.m336b(this);
                c20828k.f67420c = DoctypeSystemIdentifier_doubleQuoted;
            } else if (m467e == '\'') {
                c20828k.m336b(this);
                c20828k.f67420c = DoctypeSystemIdentifier_singleQuoted;
            } else if (m467e == '>') {
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.f67420c = BogusDoctype;
            } else {
                c20828k.m333c(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            }
        }
    },
    BetweenDoctypePublicAndSystemIdentifiers { // from class: org.jsoup.c.l.57
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r' || m467e == ' ') {
                return;
            }
            if (m467e == '\"') {
                c20828k.m336b(this);
                c20828k.f67420c = DoctypeSystemIdentifier_doubleQuoted;
            } else if (m467e == '\'') {
                c20828k.m336b(this);
                c20828k.f67420c = DoctypeSystemIdentifier_singleQuoted;
            } else if (m467e == '>') {
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.f67420c = BogusDoctype;
            } else {
                c20828k.m333c(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            }
        }
    },
    AfterDoctypeSystemKeyword { // from class: org.jsoup.c.l.58
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r' || m467e == ' ') {
                c20828k.f67420c = BeforeDoctypeSystemIdentifier;
            } else if (m467e == '\"') {
                c20828k.m336b(this);
                c20828k.f67420c = DoctypeSystemIdentifier_doubleQuoted;
            } else if (m467e == '\'') {
                c20828k.m336b(this);
                c20828k.f67420c = DoctypeSystemIdentifier_singleQuoted;
            } else if (m467e == '>') {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
            } else {
                c20828k.m333c(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            }
        }
    },
    BeforeDoctypeSystemIdentifier { // from class: org.jsoup.c.l.59
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r' || m467e == ' ') {
                return;
            }
            if (m467e == '\"') {
                c20828k.f67420c = DoctypeSystemIdentifier_doubleQuoted;
            } else if (m467e == '\'') {
                c20828k.f67420c = DoctypeSystemIdentifier_singleQuoted;
            } else if (m467e == '>') {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.f67420c = BogusDoctype;
            } else {
                c20828k.m333c(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            }
        }
    },
    DoctypeSystemIdentifier_doubleQuoted { // from class: org.jsoup.c.l.60
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67430m.f67404e.append((char) 65533);
            } else if (m467e == '\"') {
                c20828k.f67420c = AfterDoctypeSystemIdentifier;
            } else if (m467e == '>') {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.f67430m.f67404e.append(m467e);
            } else {
                c20828k.m333c(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            }
        }
    },
    DoctypeSystemIdentifier_singleQuoted { // from class: org.jsoup.c.l.61
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == 0) {
                c20828k.m336b(this);
                c20828k.f67430m.f67404e.append((char) 65533);
            } else if (m467e == '\'') {
                c20828k.f67420c = AfterDoctypeSystemIdentifier;
            } else if (m467e == '>') {
                c20828k.m336b(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.f67430m.f67404e.append(m467e);
            } else {
                c20828k.m333c(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            }
        }
    },
    AfterDoctypeSystemIdentifier { // from class: org.jsoup.c.l.62
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == '\t' || m467e == '\n' || m467e == '\f' || m467e == '\r' || m467e == ' ') {
                return;
            }
            if (m467e == '>') {
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
                c20828k.m336b(this);
                c20828k.f67420c = BogusDoctype;
            } else {
                c20828k.m333c(this);
                c20828k.f67430m.f67405f = true;
                c20828k.m331e();
                c20828k.f67420c = Data;
            }
        }
    },
    BogusDoctype { // from class: org.jsoup.c.l.63
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            char m467e = c20783a.m467e();
            if (m467e == '>') {
                c20828k.m331e();
                c20828k.f67420c = Data;
            } else if (m467e != 65535) {
            } else {
                c20828k.m331e();
                c20828k.f67420c = Data;
            }
        }
    },
    CdataSection { // from class: org.jsoup.c.l.64
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.EnumC20829l
        public final void read(C20828k c20828k, C20783a c20783a) {
            String str;
            int m483a = c20783a.m483a("]]>");
            if (m483a != -1) {
                str = C20783a.m479a(c20783a.f67300a, c20783a.f67306g, c20783a.f67304e, m483a);
                c20783a.f67304e += m483a;
            } else if (c20783a.f67302c - c20783a.f67304e < 3) {
                str = c20783a.m461k();
            } else {
                int i = (c20783a.f67302c - 3) + 1;
                char[] cArr = c20783a.f67300a;
                String[] strArr = c20783a.f67306g;
                int i2 = c20783a.f67304e;
                str = C20783a.m479a(cArr, strArr, i2, i - i2);
                c20783a.f67304e = i;
            }
            c20828k.f67425h.append(str);
            if (c20783a.m482a("]]>") || c20783a.m474c()) {
                c20828k.m341a(new AbstractC20816i.C20818a(c20828k.f67425h.toString()));
                c20828k.f67420c = Data;
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

    public static void handleDataDoubleEscapeTag(C20828k c20828k, C20783a c20783a, EnumC20829l enumC20829l, EnumC20829l enumC20829l2) {
        if (c20783a.m456p()) {
            String m460l = c20783a.m460l();
            c20828k.f67425h.append(m460l);
            c20828k.m342a(m460l);
            return;
        }
        char m467e = c20783a.m467e();
        if (m467e != '\t' && m467e != '\n' && m467e != '\f' && m467e != '\r' && m467e != ' ' && m467e != '/' && m467e != '>') {
            c20783a.m466f();
            c20828k.f67420c = enumC20829l2;
            return;
        }
        if (c20828k.f67425h.toString().equals("script")) {
            c20828k.f67420c = enumC20829l;
        } else {
            c20828k.f67420c = enumC20829l2;
        }
        c20828k.m344a(m467e);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void handleDataEndTag(org.jsoup.p592c.C20828k r4, org.jsoup.p592c.C20783a r5, org.jsoup.p592c.EnumC20829l r6) {
        /*
            r0 = r5
            boolean r0 = r0.m456p()
            if (r0 == 0) goto L1e
            r0 = r5
            java.lang.String r0 = r0.m460l()
            r5 = r0
            r0 = r4
            org.jsoup.c.i$h r0 = r0.f67426i
            r1 = r5
            r0.m371b(r1)
            r0 = r4
            java.lang.StringBuilder r0 = r0.f67425h
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            return
        L1e:
            r0 = 0
            r7 = r0
            r0 = r4
            boolean r0 = r0.m330f()
            if (r0 == 0) goto L94
            r0 = r5
            boolean r0 = r0.m474c()
            if (r0 != 0) goto L94
            r0 = r5
            char r0 = r0.m467e()
            r8 = r0
            r0 = r8
            r1 = 9
            if (r0 == r1) goto L8a
            r0 = r8
            r1 = 10
            if (r0 == r1) goto L8a
            r0 = r8
            r1 = 12
            if (r0 == r1) goto L8a
            r0 = r8
            r1 = 13
            if (r0 == r1) goto L8a
            r0 = r8
            r1 = 32
            if (r0 == r1) goto L8a
            r0 = r8
            r1 = 47
            if (r0 == r1) goto L80
            r0 = r8
            r1 = 62
            if (r0 == r1) goto L72
            r0 = r4
            java.lang.StringBuilder r0 = r0.f67425h
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            goto L94
        L72:
            r0 = r4
            r0.m345a()
            r0 = r4
            org.jsoup.c.l r1 = org.jsoup.p592c.EnumC20829l.Data
            r0.f67420c = r1
            goto L96
        L80:
            r0 = r4
            org.jsoup.c.l r1 = org.jsoup.p592c.EnumC20829l.SelfClosingStartTag
            r0.f67420c = r1
            goto L96
        L8a:
            r0 = r4
            org.jsoup.c.l r1 = org.jsoup.p592c.EnumC20829l.BeforeAttributeName
            r0.f67420c = r1
            goto L96
        L94:
            r0 = 1
            r7 = r0
        L96:
            r0 = r7
            if (r0 == 0) goto Lbe
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "</"
            r1.<init>(r2)
            r5 = r0
            r0 = r5
            r1 = r4
            java.lang.StringBuilder r1 = r1.f67425h
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r5
            java.lang.String r1 = r1.toString()
            r0.m342a(r1)
            r0 = r4
            r1 = r6
            r0.f67420c = r1
        Lbe:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.p592c.EnumC20829l.handleDataEndTag(org.jsoup.c.k, org.jsoup.c.a, org.jsoup.c.l):void");
    }

    public static void readCharRef(C20828k c20828k, EnumC20829l enumC20829l) {
        int[] m343a = c20828k.m343a(null, false);
        if (m343a == null) {
            c20828k.m344a('&');
        } else {
            c20828k.m342a(new String(m343a, 0, m343a.length));
        }
        c20828k.f67420c = enumC20829l;
    }

    public static void readEndTag(C20828k c20828k, C20783a c20783a, EnumC20829l enumC20829l, EnumC20829l enumC20829l2) {
        if (c20783a.m456p()) {
            c20828k.m339a(false);
            c20828k.f67420c = enumC20829l;
            return;
        }
        c20828k.m342a("</");
        c20828k.f67420c = enumC20829l2;
    }

    public static void readRawData(C20828k c20828k, C20783a c20783a, EnumC20829l enumC20829l, EnumC20829l enumC20829l2) {
        char c;
        char m470d = c20783a.m470d();
        if (m470d == 0) {
            c20828k.m336b(enumC20829l);
            c20783a.m465g();
            c20828k.m344a((char) 65533);
        } else if (m470d == '<') {
            c20828k.m340a(enumC20829l2);
        } else if (m470d == 65535) {
            c20828k.m341a(new AbstractC20816i.C20822e());
        } else {
            int i = c20783a.f67304e;
            int i2 = c20783a.f67302c;
            char[] cArr = c20783a.f67300a;
            int i3 = i;
            while (i3 < i2 && (c = cArr[i3]) != 0 && c != '<') {
                i3++;
            }
            c20783a.f67304e = i3;
            c20828k.m342a(i3 > i ? C20783a.m479a(c20783a.f67300a, c20783a.f67306g, i, i3 - i) : "");
        }
    }

    public abstract void read(C20828k c20828k, C20783a c20783a);
}
