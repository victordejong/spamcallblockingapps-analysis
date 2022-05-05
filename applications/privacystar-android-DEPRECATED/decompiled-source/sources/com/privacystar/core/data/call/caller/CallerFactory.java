package com.privacystar.core.data.call.caller;

import android.support.annotation.NonNull;
import com.privacystar.core.util.model.LRUCache;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/caller/CallerFactory.class */
public class CallerFactory {
    private static final int MAX_CACHE_SIZE = 1500;
    private static CallerFactory instance;
    private LRUCache<ParsedNumber, Caller> lruCache = new LRUCache<>(getCacheMaxSize());

    private CallerFactory() {
    }

    public static CallerFactory getInstance() {
        if (instance == null) {
            instance = new CallerFactory();
        }
        return instance;
    }

    public void addCaller(Caller caller) {
        synchronized (this) {
            this.lruCache.add(new ParsedNumber(caller.getNumber()), caller);
        }
    }

    public Collection<Caller> getAllCallers() {
        Collection<Caller> all;
        synchronized (this) {
            all = this.lruCache.getAll();
        }
        return all;
    }

    public Collection<Caller> getAllCallersCloned() {
        Collection<Caller> allCloned;
        synchronized (this) {
            allCloned = this.lruCache.getAllCloned();
        }
        return allCloned;
    }

    public int getCacheMaxSize() {
        return 1500;
    }

    @NonNull
    public Caller getCaller(String str) {
        synchronized (this) {
            ParsedNumber parsedNumber = new ParsedNumber(str);
            if (this.lruCache.containsKey(parsedNumber)) {
                return this.lruCache.get(parsedNumber);
            }
            Caller caller = new Caller(parsedNumber.getParsedNumber());
            this.lruCache.add(parsedNumber, caller);
            return caller;
        }
    }

    @NonNull
    public Caller getPopulatedCaller(String str) {
        Caller caller;
        synchronized (this) {
            caller = getCaller(str);
            caller.populateLocally();
        }
        return caller;
    }

    public int getSize() {
        int size;
        synchronized (this) {
            size = this.lruCache.getSize();
        }
        return size;
    }
}
