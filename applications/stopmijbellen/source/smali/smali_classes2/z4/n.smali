.class public final synthetic Lz4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lz4/n;->a:I

    iput-object p1, p0, Lz4/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lz4/n;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lz4/n;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lz4/n;->b:Ljava/lang/Object;

    check-cast v0, Le6/t;

    iget-object v1, p0, Lz4/n;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 1
    iget-object v2, v0, Le6/t;->a:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const-string v3, "FirebasePerfSharedPrefs"

    .line 2
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Le6/t;->a:Landroid/content/SharedPreferences;

    :cond_0
    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lz4/n;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lz4/n;->c:Ljava/lang/Object;

    check-cast v1, Lu5/a;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu5/b;

    invoke-interface {v0, v1}, Lu5/b;->a(Lu5/a;)V

    return-void

    .line 5
    :goto_0
    iget-object v0, p0, Lz4/n;->b:Ljava/lang/Object;

    check-cast v0, Ll6/b;

    iget-object v1, p0, Lz4/n;->c:Ljava/lang/Object;

    check-cast v1, Ln6/e;

    sget-object v2, Ll6/b;->g:Lg6/a;

    .line 6
    invoke-virtual {v0, v1}, Ll6/b;->b(Ln6/e;)Lo6/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, v0, Ll6/b;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
