.class public Lyv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf40;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lyv;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lyv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lyv;->c:I

    return v0
.end method
