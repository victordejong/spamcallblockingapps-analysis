package com.amazonaws.logging;

import com.amazonaws.logging.LogFactory;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/OptimizedLogFactory$LevelTypeAdapter.class */
public class OptimizedLogFactory$LevelTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f6664a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f6665b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f6666c;

    public OptimizedLogFactory$LevelTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f6664a = fVar;
        this.f6665b = _optimizedjsonreader;
        this.f6666c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        int c2 = this.f6665b.c(jsonReader);
        if (c2 == 8) {
            return LogFactory.Level.ERROR;
        }
        if (c2 == 33) {
            return LogFactory.Level.OFF;
        }
        if (c2 == 51) {
            return LogFactory.Level.ALL;
        }
        if (c2 == 53) {
            return LogFactory.Level.INFO;
        }
        if (c2 == 65) {
            return LogFactory.Level.WARN;
        }
        if (c2 == 89) {
            return LogFactory.Level.TRACE;
        }
        if (c2 != 92) {
            return null;
        }
        return LogFactory.Level.DEBUG;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            this.f6666c.c(jsonWriter, obj == LogFactory.Level.TRACE ? 89 : obj == LogFactory.Level.ALL ? 51 : obj == LogFactory.Level.ERROR ? 8 : obj == LogFactory.Level.INFO ? 53 : obj == LogFactory.Level.DEBUG ? 92 : obj == LogFactory.Level.WARN ? 65 : obj == LogFactory.Level.OFF ? 33 : -1);
        }
    }
}
