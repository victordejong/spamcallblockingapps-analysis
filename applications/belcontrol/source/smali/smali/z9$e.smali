.class public Lz9$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lz9$f;


# direct methods
.method public constructor <init>(I[Lz9$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz9$e;->a:I

    iput-object p2, p0, Lz9$e;->b:[Lz9$f;

    return-void
.end method


# virtual methods
.method public a()[Lz9$f;
    .locals 1

    iget-object v0, p0, Lz9$e;->b:[Lz9$f;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lz9$e;->a:I

    return v0
.end method
