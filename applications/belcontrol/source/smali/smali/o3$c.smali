.class public Lo3$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3$c;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lo3$c;
    .locals 2

    const-string v0, "android.support.customtabs.trusted.CHANNEL_NAME"

    invoke-static {p0, v0}, Lo3;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    new-instance v1, Lo3$c;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lo3$c;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
