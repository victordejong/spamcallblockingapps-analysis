.class Lcom/allinone/callerid/main/EZCallApplication$a;
.super Ljava/lang/Object;
.source "EZCallApplication.java"

# interfaces
.implements Lcom/tencent/mmkv/MMKV$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/main/EZCallApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/main/EZCallApplication;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/main/EZCallApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/main/EZCallApplication$a;->a:Lcom/allinone/callerid/main/EZCallApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/main/EZCallApplication$a;->a:Lcom/allinone/callerid/main/EZCallApplication;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/getkeepsafe/relinker/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
