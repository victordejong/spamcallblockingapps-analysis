.class public final Lcom/google/firebase/iid/as$a;
.super Ljava/lang/ClassLoader;
.source "com.google.firebase:firebase-iid@@20.1.5"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2
    const-string/jumbo v0, "com.google.android.gms.iid.MessengerCompat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v1, "Using renamed FirebaseIidMessengerCompat class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    const-class v0, Lcom/google/firebase/iid/as;

    .line 6
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
