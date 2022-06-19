.class public final Lk8$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk8$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ly9;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Ly9;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8$d;->a:Ly9;

    iput p2, p0, Lk8$d;->c:I

    iput p3, p0, Lk8$d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lk8$d;->c:I

    return v0
.end method

.method public b()Ly9;
    .locals 1

    iget-object v0, p0, Lk8$d;->a:Ly9;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lk8$d;->b:I

    return v0
.end method
