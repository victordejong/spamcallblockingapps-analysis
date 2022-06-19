.class Lcom/unknownphone/callblocker/custom/CustomApplication$1;
.super Ljava/lang/Object;
.source "CustomApplication.java"

# interfaces
.implements Lcom/unknownphone/callblocker/custom/CustomApplication$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/custom/CustomApplication;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/d/b;

.field final synthetic b:Lcom/unknownphone/callblocker/custom/CustomApplication;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/custom/CustomApplication;Lcom/unknownphone/callblocker/d/b;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$1;->b:Lcom/unknownphone/callblocker/custom/CustomApplication;

    iput-object p2, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$1;->a:Lcom/unknownphone/callblocker/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/g/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$1;->a:Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v0, p1}, Lcom/unknownphone/callblocker/d/b;->b(Ljava/util/List;)V

    .line 72
    iget-object v0, p0, Lcom/unknownphone/callblocker/custom/CustomApplication$1;->b:Lcom/unknownphone/callblocker/custom/CustomApplication;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Lcom/unknownphone/callblocker/custom/CustomApplication;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "spam_numbers_last_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
