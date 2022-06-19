.class public final Lsk0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkm0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk0;->x(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lgk0;->i()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lgk0;->h()V

    :goto_0
    return-void
.end method
