.class public Lj0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll0/a<",
        "Lj0/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj0/c;


# direct methods
.method public constructor <init>(Lj0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/g;->a:Lj0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lj0/j$a;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lj0/j$a;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Lj0/j$a;-><init>(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lj0/g;->a:Lj0/c;

    invoke-virtual {v0, p1}, Lj0/c;->a(Lj0/j$a;)V

    return-void
.end method
