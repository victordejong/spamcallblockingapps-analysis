package com.criteo.controller;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.criteo.utils.Tracer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
/* loaded from: classes-dex2jar.jar:com/criteo/controller/IOHandler.class */
public class IOHandler {
    public static final String TAG = "criteo.Stories.IOHandler";

    public static void deleteFile(Context context, String str) {
        Tracer.debug(TAG, "deleteFile: ");
        try {
            context.deleteFile(str);
        } catch (Exception e) {
            Tracer.error(TAG, "deleteFile: " + e.getMessage());
            e.printStackTrace();
        }
    }

    public static boolean isImageExist(Context context, String str) {
        Tracer.debug(TAG, "isImageExist: ");
        try {
            File fileStreamPath = context.getFileStreamPath(str);
            boolean z = false;
            if (fileStreamPath != null) {
                z = false;
                if (fileStreamPath.exists()) {
                    z = true;
                }
            }
            return z;
        } catch (Exception e) {
            Tracer.error(TAG, "isImageExist: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r3v10 */
    public static Bitmap loadImage(Context context, String str) {
        Throwable th;
        Exception e;
        FileInputStream fileInputStream;
        Tracer.debug(TAG, "loadImage: ");
        try {
            try {
                fileInputStream = context.openFileInput(str);
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream);
                    try {
                        fileInputStream.close();
                    } catch (Exception e2) {
                        Tracer.error(TAG, "loadImage: 2: " + e2.getMessage());
                        e2.printStackTrace();
                    }
                    return decodeStream;
                } catch (Exception e3) {
                    e = e3;
                    StringBuilder sb = new StringBuilder();
                    sb.append("loadImage: ");
                    sb.append(e.getMessage());
                    Tracer.debug(TAG, sb.toString());
                    e.printStackTrace();
                    try {
                        fileInputStream.close();
                        return null;
                    } catch (Exception e4) {
                        Tracer.error(TAG, "loadImage: 2: " + e4.getMessage());
                        e4.printStackTrace();
                        return null;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    context.close();
                } catch (Exception e5) {
                    Tracer.error(TAG, "loadImage: 2: " + e5.getMessage());
                    e5.printStackTrace();
                }
                throw th;
            }
        } catch (Exception e6) {
            e = e6;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            context = 0;
            context.close();
            throw th;
        }
    }

    public static Object loadObject(Context context, String str) {
        ObjectInputStream objectInputStream;
        Throwable th;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        Exception e;
        ObjectInputStream objectInputStream2;
        Tracer.debug(TAG, "loadObject: ");
        try {
            fileInputStream = context.openFileInput(str);
            try {
                ObjectInputStream objectInputStream3 = new ObjectInputStream(fileInputStream);
                fileInputStream = fileInputStream;
                objectInputStream = objectInputStream3;
                try {
                    try {
                        Object readObject = objectInputStream3.readObject();
                        try {
                            fileInputStream.close();
                        } catch (Exception e2) {
                            Tracer.error(TAG, "loadObject: 2: " + e2.getMessage());
                            e2.printStackTrace();
                        }
                        try {
                            objectInputStream3.close();
                        } catch (Exception e3) {
                            Tracer.error(TAG, "loadObject: 3: " + e3.getMessage());
                            e3.printStackTrace();
                        }
                        return readObject;
                    } catch (Exception e4) {
                        e = e4;
                        fileInputStream2 = fileInputStream;
                        objectInputStream2 = objectInputStream3;
                        StringBuilder sb = new StringBuilder();
                        sb.append("loadObject: ");
                        sb.append(e.getMessage());
                        Tracer.error(TAG, sb.toString());
                        fileInputStream = fileInputStream2;
                        objectInputStream = objectInputStream2;
                        e.printStackTrace();
                        try {
                            fileInputStream2.close();
                        } catch (Exception e5) {
                            Tracer.error(TAG, "loadObject: 2: " + e5.getMessage());
                            e5.printStackTrace();
                        }
                        try {
                            objectInputStream2.close();
                            return null;
                        } catch (Exception e6) {
                            Tracer.error(TAG, "loadObject: 3: " + e6.getMessage());
                            e6.printStackTrace();
                            return null;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        fileInputStream.close();
                    } catch (Exception e7) {
                        Tracer.error(TAG, "loadObject: 2: " + e7.getMessage());
                        e7.printStackTrace();
                    }
                    try {
                        objectInputStream.close();
                    } catch (Exception e8) {
                        Tracer.error(TAG, "loadObject: 3: " + e8.getMessage());
                        e8.printStackTrace();
                    }
                    throw th;
                }
            } catch (Exception e9) {
                e = e9;
                objectInputStream2 = null;
                fileInputStream2 = fileInputStream;
            } catch (Throwable th3) {
                th = th3;
                objectInputStream = null;
                fileInputStream.close();
                objectInputStream.close();
                throw th;
            }
        } catch (Exception e10) {
            e = e10;
            fileInputStream2 = null;
            objectInputStream2 = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
            objectInputStream = null;
        }
    }

    public static boolean saveBitmap(Context context, String str, Bitmap bitmap) {
        Tracer.debug(TAG, "saveBitmap: ");
        FileOutputStream fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                FileOutputStream openFileOutput = context.openFileOutput(str, 0);
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, openFileOutput);
                openFileOutput.flush();
                fileOutputStream2 = openFileOutput;
                fileOutputStream = openFileOutput;
                openFileOutput.close();
                try {
                    openFileOutput.close();
                    return true;
                } catch (Exception e) {
                    Tracer.error(TAG, "saveBitmap: 2: " + e.getMessage());
                    e.printStackTrace();
                    return true;
                }
            } catch (Exception e2) {
                StringBuilder sb = new StringBuilder();
                sb.append("saveBitmap: ");
                sb.append(e2.getMessage());
                Tracer.error(TAG, sb.toString());
                e2.printStackTrace();
                try {
                    fileOutputStream.close();
                    return false;
                } catch (Exception e3) {
                    Tracer.error(TAG, "saveBitmap: 2: " + e3.getMessage());
                    e3.printStackTrace();
                    return false;
                }
            }
        } catch (Throwable th) {
            try {
                fileOutputStream2.close();
            } catch (Exception e4) {
                Tracer.error(TAG, "saveBitmap: 2: " + e4.getMessage());
                e4.printStackTrace();
            }
            throw th;
        }
    }

    public static boolean saveObject(Context context, String str, Object obj) {
        Throwable th;
        ObjectOutputStream objectOutputStream;
        Exception e;
        Tracer.debug(TAG, "saveObject: ");
        r5 = null;
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = context.openFileOutput(str, 0);
            try {
                objectOutputStream = new ObjectOutputStream(fileOutputStream);
                try {
                    objectOutputStream.writeObject(obj);
                    objectOutputStream.flush();
                    try {
                        fileOutputStream.close();
                    } catch (Exception e2) {
                        Tracer.error(TAG, "saveObject: 2: " + e2.getMessage());
                        e2.printStackTrace();
                    }
                    try {
                        objectOutputStream.close();
                        return true;
                    } catch (Exception e3) {
                        Tracer.error(TAG, "saveObject: 3: " + e3.getMessage());
                        e3.printStackTrace();
                        return true;
                    }
                } catch (Exception e4) {
                    e = e4;
                    try {
                        Tracer.error(TAG, "saveObject: " + e.getMessage());
                        e.printStackTrace();
                        try {
                            fileOutputStream.close();
                        } catch (Exception e5) {
                            Tracer.error(TAG, "saveObject: 2: " + e5.getMessage());
                            e5.printStackTrace();
                        }
                        try {
                            objectOutputStream.close();
                            return false;
                        } catch (Exception e6) {
                            Tracer.error(TAG, "saveObject: 3: " + e6.getMessage());
                            e6.printStackTrace();
                            return false;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            fileOutputStream.close();
                        } catch (Exception e7) {
                            Tracer.error(TAG, "saveObject: 2: " + e7.getMessage());
                            e7.printStackTrace();
                        }
                        try {
                            objectOutputStream.close();
                        } catch (Exception e8) {
                            Tracer.error(TAG, "saveObject: 3: " + e8.getMessage());
                            e8.printStackTrace();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream.close();
                    objectOutputStream.close();
                    throw th;
                }
            } catch (Exception e9) {
                e = e9;
                objectOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                objectOutputStream = null;
            }
        } catch (Exception e10) {
            e = e10;
            objectOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            objectOutputStream = null;
        }
    }
}
