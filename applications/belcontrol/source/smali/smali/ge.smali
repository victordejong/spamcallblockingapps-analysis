.class public Lge;
.super Ldf;
.source ""


# instance fields
.field public c:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ldf;-><init>()V

    iput-object p1, p0, Lge;->c:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public g()Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Application;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lge;->c:Landroid/app/Application;

    return-object v0
.end method
