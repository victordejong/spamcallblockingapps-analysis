.class public Lz4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/b;
.implements Lw5/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw5/b<",
        "TT;>;",
        "Lw5/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Lw5/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile b:Lw5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw5/a$a;Lw5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw5/a$a<",
            "TT;>;",
            "Lw5/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz4/s;->a:Lw5/a$a;

    .line 3
    iput-object p2, p0, Lz4/s;->b:Lw5/b;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz4/s;->b:Lw5/b;

    invoke-interface {v0}, Lw5/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
