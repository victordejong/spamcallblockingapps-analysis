.class public Lji0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lji0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcj0;
    .locals 2

    new-instance v0, Lcj0;

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcj0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
