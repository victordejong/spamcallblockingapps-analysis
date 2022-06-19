.class public final Lro0;
.super Lan0;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const v2, 0x10006

    const v3, 0x10007

    const v4, 0x13353c9

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lan0;-><init>(Landroid/content/Context;IIILjava/lang/String;)V

    iput-object p3, p0, Lro0;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lro0;->l:Ljava/lang/String;

    const-string v1, "com.facebook.platform.extra.OBJECT_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
