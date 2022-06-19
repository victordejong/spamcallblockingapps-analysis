package com.amazonaws.logging;

import com.amazonaws.logging.LogFactory;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/OptimizedLogFactory$LevelTypeAdapter.class */
public class OptimizedLogFactory$LevelTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f12118a;

    /* renamed from: b */
    private _OptimizedJsonReader f12119b;

    /* renamed from: c */
    private _OptimizedJsonWriter f12120c;

    public OptimizedLogFactory$LevelTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f12118a = c15965f;
        this.f12119b = _optimizedjsonreader;
        this.f12120c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        int mo122c = this.f12119b.mo122c(jsonReader);
        if (mo122c != 8) {
            if (mo122c == 33) {
                return LogFactory.Level.OFF;
            }
            if (mo122c == 51) {
                return LogFactory.Level.ALL;
            }
            if (mo122c == 53) {
                return LogFactory.Level.INFO;
            }
            if (mo122c == 65) {
                return LogFactory.Level.WARN;
            }
            if (mo122c == 89) {
                return LogFactory.Level.TRACE;
            }
            if (mo122c == 92) {
                return LogFactory.Level.DEBUG;
            }
            return null;
        }
        return LogFactory.Level.ERROR;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            this.f12120c.mo119c(jsonWriter, obj == LogFactory.Level.TRACE ? 89 : obj == LogFactory.Level.ALL ? 51 : obj == LogFactory.Level.ERROR ? 8 : obj == LogFactory.Level.INFO ? 53 : obj == LogFactory.Level.DEBUG ? 92 : obj == LogFactory.Level.WARN ? 65 : obj == LogFactory.Level.OFF ? 33 : -1);
        }
    }
}
