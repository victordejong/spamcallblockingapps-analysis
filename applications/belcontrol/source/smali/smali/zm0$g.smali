.class public Lzm0$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Lzm0$f;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lzm0$g;)Lzm0$f;
    .locals 0

    iget-object p0, p0, Lzm0$g;->a:Lzm0$f;

    return-object p0
.end method

.method public static synthetic b(Lzm0$g;)I
    .locals 0

    iget p0, p0, Lzm0$g;->b:I

    return p0
.end method

.method public static c(Lzm0$f;I)Lzm0$g;
    .locals 1

    new-instance v0, Lzm0$g;

    invoke-direct {v0}, Lzm0$g;-><init>()V

    iput-object p0, v0, Lzm0$g;->a:Lzm0$f;

    iput p1, v0, Lzm0$g;->b:I

    return-object v0
.end method

.method public static d()Lzm0$g;
    .locals 2

    new-instance v0, Lzm0$g;

    invoke-direct {v0}, Lzm0$g;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lzm0$g;->b:I

    return-object v0
.end method


# virtual methods
.method public e()I
    .locals 1

    iget v0, p0, Lzm0$g;->b:I

    return v0
.end method
