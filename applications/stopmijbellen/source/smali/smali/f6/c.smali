.class public final Lf6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lf6/a;


# direct methods
.method public synthetic constructor <init>(Lf6/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf6/c;->a:I

    iput-object p1, p0, Lf6/c;->b:Lf6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lf6/c;->a:I

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lf6/c;->b:Lf6/a;

    .line 2
    iget-object v0, v0, Lf6/a;->a:Lt4/c;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 4
    :goto_0
    iget-object v0, p0, Lf6/c;->b:Lf6/a;

    .line 5
    iget-object v0, v0, Lf6/a;->d:Lw5/b;

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
