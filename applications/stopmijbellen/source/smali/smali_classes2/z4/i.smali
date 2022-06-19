.class public final synthetic Lz4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/b;


# instance fields
.field public final synthetic a:Lz4/k;

.field public final synthetic b:Lz4/c;


# direct methods
.method public synthetic constructor <init>(Lz4/k;Lz4/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/i;->a:Lz4/k;

    iput-object p2, p0, Lz4/i;->b:Lz4/c;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lz4/i;->a:Lz4/k;

    iget-object v1, p0, Lz4/i;->b:Lz4/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v2, v1, Lz4/c;->e:Lz4/f;

    .line 2
    new-instance v3, Lz4/t;

    invoke-direct {v3, v1, v0}, Lz4/t;-><init>(Lz4/c;Lz4/d;)V

    .line 3
    invoke-interface {v2, v3}, Lz4/f;->b(Lz4/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
