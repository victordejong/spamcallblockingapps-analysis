.class final Lcom/google/gson/internal/bind/j$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/j;->a(Lcom/google/gson/a/a;Lcom/google/gson/j;)Lcom/google/gson/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/a/a;

.field final synthetic b:Lcom/google/gson/j;


# direct methods
.method constructor <init>(Lcom/google/gson/a/a;Lcom/google/gson/j;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/google/gson/internal/bind/j$25;->a:Lcom/google/gson/a/a;

    iput-object p2, p0, Lcom/google/gson/internal/bind/j$25;->b:Lcom/google/gson/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/f;Lcom/google/gson/a/a;)Lcom/google/gson/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/a/a<",
            "TT;>;)",
            "Lcom/google/gson/j<",
            "TT;>;"
        }
    .end annotation

    .line 827
    iget-object p1, p0, Lcom/google/gson/internal/bind/j$25;->a:Lcom/google/gson/a/a;

    invoke-virtual {p2, p1}, Lcom/google/gson/a/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/gson/internal/bind/j$25;->b:Lcom/google/gson/j;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
