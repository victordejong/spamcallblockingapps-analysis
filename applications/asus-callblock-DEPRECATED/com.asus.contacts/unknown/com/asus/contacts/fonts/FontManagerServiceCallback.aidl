package com.asus.contacts.fonts;

interface FontManagerServiceCallback {
    void startLoading();
    void onProgressUpdate(in String[] msg);
    void finishLoading();
}