.class public final synthetic Lh8/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh8/n;->a:I

    iput p2, p0, Lh8/n;->b:I

    return-void
.end method


# virtual methods
.method public final c(Lc9/f;)V
    .locals 4

    iget p1, p0, Lh8/n;->a:I

    iget v0, p0, Lh8/n;->b:I

    add-int/lit8 v1, p1, 0x1

    :goto_0
    add-int v2, p1, v0

    if-ge v1, v2, :cond_0

    .line 1
    new-instance v2, Lh8/r;

    invoke-direct {v2}, Lh8/r;-><init>()V

    .line 2
    iput v1, v2, Lh8/r;->b:I

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lh8/r;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Lb9/a;->a()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
