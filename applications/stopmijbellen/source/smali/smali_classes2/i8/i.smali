.class public Li8/i;
.super Ly8/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly8/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lc9/f;)V
    .locals 3

    .line 1
    const-class v0, Lh8/i;

    .line 2
    new-instance v1, Lw8/f;

    invoke-direct {v1}, Lw8/f;-><init>()V

    .line 3
    new-instance v2, Lw8/g;

    invoke-direct {v2, v1, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v2, p1}, Lw8/d;->e(Lc9/f;)V

    return-void
.end method
