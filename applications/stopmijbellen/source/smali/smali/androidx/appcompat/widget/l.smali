.class public Landroidx/appcompat/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/d;
.implements Ll9/a;
.implements Lo4/s;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, Landroidx/appcompat/widget/l;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld7/c;

    invoke-direct {v0}, Ld7/c;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    new-instance v1, Ld7/b;

    invoke-direct {v1, v0}, Ld7/b;-><init>(Ld7/a;)V

    iput-object v1, p0, Landroidx/appcompat/widget/l;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/l;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    .line 6
    new-instance v1, Lw0/a;

    invoke-direct {v1, p1, v0}, Lw0/a;-><init>(Landroid/widget/EditText;Z)V

    iput-object v1, p0, Landroidx/appcompat/widget/l;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Landroidx/appcompat/widget/l;->a:I

    iput-object p1, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/l;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/l;->a:I

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/appcompat/widget/l;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lv6/b;->a:Lv6/b;

    .line 9
    iput-object v0, p0, Landroidx/appcompat/widget/l;->c:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lv2/j;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    check-cast v0, Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/l;->c:Ljava/lang/Object;

    check-cast v1, Ll9/a;

    invoke-interface {v1}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2
    new-instance v2, Lv2/j;

    check-cast v1, Lv2/i;

    invoke-direct {v2, v0, v1}, Lv2/j;-><init>(Landroid/content/Context;Lv2/i;)V

    return-object v2
.end method

.method public b(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/l;->c:Ljava/lang/Object;

    check-cast v0, Lw0/a;

    .line 3
    iget-object v0, v0, Lw0/a;->a:Lw0/a$b;

    invoke-virtual {v0, p1}, Lw0/a$b;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public c(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lh8/k;->i:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xe

    .line 3
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/l;->f(Z)V

    return-void

    :catchall_0
    move-exception p2

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    throw p2
.end method

.method public d(Lg1/c;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->c:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_c

    .line 3
    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    if-nez v3, :cond_1

    .line 4
    move-object v3, p1

    check-cast v3, Lh1/e;

    .line 5
    iget-object v3, v3, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v4, v3, [B

    if-eqz v4, :cond_2

    .line 7
    check-cast v3, [B

    move-object v4, p1

    check-cast v4, Lh1/e;

    .line 8
    iget-object v4, v4, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_0

    .line 9
    :cond_2
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_3

    .line 10
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    move-object v5, p1

    check-cast v5, Lh1/e;

    .line 11
    iget-object v5, v5, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    goto :goto_0

    .line 12
    :cond_3
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_4

    .line 13
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lh1/e;

    .line 14
    iget-object v5, v5, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    goto :goto_0

    .line 15
    :cond_4
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 16
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lh1/e;

    .line 17
    iget-object v5, v5, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 18
    :cond_5
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 19
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    move-object v5, p1

    check-cast v5, Lh1/e;

    .line 20
    iget-object v5, v5, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 21
    :cond_6
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_7

    .line 22
    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    int-to-long v3, v3

    move-object v5, p1

    check-cast v5, Lh1/e;

    .line 23
    iget-object v5, v5, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto/16 :goto_0

    .line 24
    :cond_7
    instance-of v4, v3, Ljava/lang/Byte;

    if-eqz v4, :cond_8

    .line 25
    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    int-to-long v3, v3

    move-object v5, p1

    check-cast v5, Lh1/e;

    .line 26
    iget-object v5, v5, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto/16 :goto_0

    .line 27
    :cond_8
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 28
    check-cast v3, Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Lh1/e;

    .line 29
    iget-object v4, v4, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 30
    :cond_9
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_b

    .line 31
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    const-wide/16 v3, 0x1

    goto :goto_1

    :cond_a
    const-wide/16 v3, 0x0

    :goto_1
    move-object v5, p1

    check-cast v5, Lh1/e;

    .line 32
    iget-object v5, v5, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto/16 :goto_0

    .line 33
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot bind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Supported types: null, byte[], float, double, long, int, short, byte, string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_2
    return-void
.end method

.method public e(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->c:Ljava/lang/Object;

    check-cast v0, Lw0/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lw0/a;->a:Lw0/a$b;

    invoke-virtual {v0, p1, p2}, Lw0/a$b;->b(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->c:Ljava/lang/Object;

    check-cast v0, Lw0/a;

    .line 2
    iget-object v0, v0, Lw0/a;->a:Lw0/a$b;

    invoke-virtual {v0, p1}, Lw0/a$b;->c(Z)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->a()Lv2/j;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/l;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    check-cast v0, Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/l;->c:Ljava/lang/Object;

    check-cast v1, Lo4/s;

    invoke-static {v1}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v1

    .line 2
    new-instance v2, Lj4/v1;

    check-cast v0, Lj4/w;

    invoke-direct {v2, v0, v1}, Lj4/v1;-><init>(Lj4/w;Lo4/p;)V

    return-object v2
.end method
