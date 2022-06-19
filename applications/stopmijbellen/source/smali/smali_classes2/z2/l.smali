.class public final synthetic Lz2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/r$b;
.implements Lh5/a$a;
.implements Lr2/e;
.implements Lcom/google/android/gms/tasks/SuccessContinuation;
.implements Li2/e;
.implements Le2/g$c;
.implements Ld9/h$c;


# static fields
.field public static final synthetic b:Lz2/l;

.field public static final synthetic c:Lz2/l;

.field public static final synthetic d:Lz2/l;

.field public static final synthetic e:Lz2/l;

.field public static final synthetic f:Lz2/l;

.field public static final synthetic g:Lz2/l;

.field public static final synthetic h:Lz2/l;

.field public static final synthetic i:Lz2/l;

.field public static final synthetic j:Lz2/l;

.field public static final synthetic k:Lz2/l;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz2/l;-><init>(I)V

    sput-object v0, Lz2/l;->b:Lz2/l;

    new-instance v0, Lz2/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lz2/l;-><init>(I)V

    sput-object v0, Lz2/l;->c:Lz2/l;

    new-instance v0, Lz2/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lz2/l;-><init>(I)V

    sput-object v0, Lz2/l;->d:Lz2/l;

    new-instance v0, Lz2/l;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lz2/l;-><init>(I)V

    sput-object v0, Lz2/l;->e:Lz2/l;

    new-instance v0, Lz2/l;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lz2/l;-><init>(I)V

    sput-object v0, Lz2/l;->f:Lz2/l;

    new-instance v0, Lz2/l;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lz2/l;-><init>(I)V

    sput-object v0, Lz2/l;->g:Lz2/l;

    new-instance v0, Lz2/l;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lz2/l;-><init>(I)V

    sput-object v0, Lz2/l;->h:Lz2/l;

    new-instance v0, Lz2/l;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lz2/l;-><init>(I)V

    sput-object v0, Lz2/l;->i:Lz2/l;

    new-instance v0, Lz2/l;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lz2/l;-><init>(I)V

    sput-object v0, Lz2/l;->j:Lz2/l;

    new-instance v0, Lz2/l;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lz2/l;-><init>(I)V

    sput-object v0, Lz2/l;->k:Lz2/l;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lz2/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li2/c;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Lf8/a;->a:Landroid/content/Context;

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lz2/l;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Landroid/database/Cursor;

    sget-object v0, Lz2/r;->e:Lr2/b;

    .line 1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1

    .line 4
    :goto_1
    check-cast p1, Lo6/i;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i;->b()I

    move-result v0

    new-array v2, v0, [B

    .line 6
    sget-object v3, Lcom/google/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 7
    new-instance v3, Lcom/google/protobuf/CodedOutputStream$b;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/protobuf/CodedOutputStream$b;-><init>([BII)V

    .line 8
    invoke-virtual {p1, v3}, Lcom/google/protobuf/i;->f(Lcom/google/protobuf/CodedOutputStream;)V

    .line 9
    invoke-virtual {v3}, Lcom/google/protobuf/CodedOutputStream$b;->L0()I

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-virtual {p1, v2}, Lcom/google/protobuf/a;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lz2/l;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v0, Lh5/a;->a:Lr5/a;

    .line 1
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Null value"

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Null key"

    .line 9
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-nez v1, :cond_3

    const-string p1, " key"

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    if-nez v2, :cond_4

    const-string v3, " value"

    .line 11
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13
    new-instance p1, Lg5/c;

    invoke-direct {p1, v1, v2, v0}, Lg5/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lg5/c$a;)V

    return-object p1

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :goto_2
    invoke-static {p1}, Lh5/a;->a(Landroid/util/JsonReader;)Lg5/v$d$d$a$b$d$a;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ld9/h;)V
    .locals 2

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "x2 DB completed"

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/ads/a;->l(Ljava/lang/String;ILba/b;)V

    return-void
.end method

.method public g(Le2/g;Le2/b;)V
    .locals 1

    iget p1, p0, Lz2/l;->a:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void

    .line 3
    :pswitch_2
    sget p1, Lcom/mglab/scm/visual/FragmentDev;->b:I

    .line 4
    new-instance p1, Lw8/f;

    invoke-direct {p1}, Lw8/f;-><init>()V

    .line 5
    const-class p2, Lh8/i;

    .line 6
    new-instance v0, Lw8/g;

    invoke-direct {v0, p1, p2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v0}, Lw8/d;->d()V

    .line 8
    new-instance p1, Lw8/f;

    invoke-direct {p1}, Lw8/f;-><init>()V

    .line 9
    const-class p2, Lh8/l;

    .line 10
    new-instance v0, Lw8/g;

    invoke-direct {v0, p1, p2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {v0}, Lw8/d;->d()V

    return-void

    .line 12
    :pswitch_3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/v;

    invoke-direct {p2}, Lk8/v;-><init>()V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    return-void

    .line 13
    :goto_0
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/w;

    const-string v0, "faq"

    invoke-direct {p2, v0}, Lk8/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    check-cast p1, Lr6/e;

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
