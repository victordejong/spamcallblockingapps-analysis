.class public final Lta1$b;
.super Lva1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lta1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lva1;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lta1;)Z
    .locals 0

    invoke-static {}, Llm1;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public b([Lta1;Landroid/app/Activity;I)V
    .locals 0

    const-string p1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-virtual {p0, p1, p3, p2}, Lva1;->c(Ljava/lang/String;ILandroid/app/Activity;)V

    return-void
.end method
