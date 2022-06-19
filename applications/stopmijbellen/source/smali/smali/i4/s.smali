.class public Li4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/s;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lo4/s;Lo4/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/s;->a:Ljava/lang/Object;

    iput-object p2, p0, Li4/s;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lw5/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Li4/s;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Li4/s;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Li4/s;->a:Ljava/lang/Object;

    check-cast v0, Lo4/s;

    check-cast v0, Li4/l;

    .line 1
    invoke-virtual {v0}, Li4/l;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Li4/s;->b:Ljava/lang/Object;

    check-cast v1, Lo4/s;

    invoke-interface {v1}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 2
    new-instance v2, Li4/r;

    check-cast v1, Li4/t;

    invoke-direct {v2, v0, v1}, Li4/r;-><init>(Landroid/content/Context;Li4/t;)V

    return-object v2
.end method
