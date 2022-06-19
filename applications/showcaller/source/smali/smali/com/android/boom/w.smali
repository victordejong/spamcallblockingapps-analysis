.class public Lcom/android/boom/w;
.super Ljava/lang/Object;
.source "w.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/boom/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Boom"

    invoke-static {v0, v1}, Lcom/getkeepsafe/relinker/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public static native d(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public static native de(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native en(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native f(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public static native j(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public static native r(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public static native readDf(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native writeDf(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public static native y(Ljava/lang/Object;)Ljava/lang/String;
.end method
