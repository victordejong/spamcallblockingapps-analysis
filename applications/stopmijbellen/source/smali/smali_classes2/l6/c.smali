.class public final synthetic Ll6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Ll6/c;->a:I

    iput-object p1, p0, Ll6/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll6/c;->d:Ljava/lang/Object;

    iput-object p3, p0, Ll6/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Ll6/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ll6/c;->c:Ljava/lang/Object;

    check-cast v0, Lm6/e;

    iget-object v1, p0, Ll6/c;->d:Ljava/lang/Object;

    check-cast v1, Lo6/m;

    iget-object v2, p0, Ll6/c;->b:Ljava/lang/Object;

    check-cast v2, Lo6/d;

    sget-object v3, Lm6/e;->r:Lg6/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Lo6/i;->F()Lo6/i$b;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Lcom/google/protobuf/i$a;->n()V

    .line 3
    iget-object v4, v3, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v4, Lo6/i;

    invoke-static {v4, v1}, Lo6/i;->B(Lo6/i;Lo6/m;)V

    .line 4
    invoke-virtual {v0, v3, v2}, Lm6/e;->e(Lo6/i$b;Lo6/d;)V

    return-void

    .line 5
    :pswitch_1
    iget-object v0, p0, Ll6/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    iget-object v1, p0, Ll6/c;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Ll6/c;->b:Ljava/lang/Object;

    check-cast v2, Lo6/d;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->a(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lo6/d;)V

    return-void

    :goto_0
    iget-object v0, p0, Ll6/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/util/BiConsumer;

    iget-object v1, p0, Ll6/c;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Ll6/c;->b:Ljava/lang/Object;

    check-cast v2, Lr6/e;

    sget-object v3, Lr6/h;->e:Ljava/util/regex/Pattern;

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
