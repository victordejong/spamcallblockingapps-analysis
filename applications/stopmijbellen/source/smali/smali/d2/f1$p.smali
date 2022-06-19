.class public Ld2/f1$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1;->k(Ld2/f4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld2/a<",
        "Ld2/o1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ld2/o1;

    .line 2
    invoke-static {}, Ld2/r1;->c()Ld2/r1;

    move-result-object v0

    .line 3
    iput-object p1, v0, Ld2/r1;->a:Ld2/o1;

    return-void
.end method
