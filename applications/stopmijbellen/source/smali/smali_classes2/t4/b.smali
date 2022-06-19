.class public final synthetic Lt4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/b;


# instance fields
.field public final synthetic a:Lt4/c;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lt4/c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4/b;->a:Lt4/c;

    iput-object p2, p0, Lt4/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lt4/b;->a:Lt4/c;

    iget-object v1, p0, Lt4/b;->b:Landroid/content/Context;

    .line 1
    new-instance v2, Lb6/a;

    .line 2
    invoke-virtual {v0}, Lt4/c;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lt4/c;->d:Lz4/k;

    const-class v4, Lu5/c;

    .line 3
    invoke-virtual {v0, v4}, Landroid/support/v4/media/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu5/c;

    invoke-direct {v2, v1, v3, v0}, Lb6/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lu5/c;)V

    return-object v2
.end method
