package com.asus.contacts.fonts;

import com.asus.contacts.fonts.FontManagerServiceCallback;
import com.asus.contacts.fonts.Font;
interface FontManagerServiceBinder {
    void asyncScan();
    void stopLoadingTask();
    boolean isInitingDataSet();
    boolean isScanning();
    void updateFontCache(in List<Font> list);
    boolean isSameTypefaceDescription(int position, String tag);
    String getTypefaceDescription(int position);
    void registerCallback(FontManagerServiceCallback cb);
    void unregisterCallback(FontManagerServiceCallback cb);
    Font getRawFont(int position);
    List<Font> getFontList();
    void clearCallbacks();
    // rebaca, fix service not stop
    void stopService();
}