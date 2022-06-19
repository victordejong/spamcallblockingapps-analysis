.class final Lcom/callerid/block/util/j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/mmkv/MMKV$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/j;->h(Landroid/content/Context;Lcom/callerid/block/bean/EZCountryCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/getkeepsafe/relinker/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
