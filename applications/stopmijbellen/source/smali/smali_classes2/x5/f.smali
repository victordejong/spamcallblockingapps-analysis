.class public final synthetic Lx5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/f;


# static fields
.field public static final synthetic b:Lx5/f;

.field public static final synthetic c:Lx5/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lx5/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx5/f;-><init>(I)V

    sput-object v0, Lx5/f;->b:Lx5/f;

    new-instance v0, Lx5/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lx5/f;-><init>(I)V

    sput-object v0, Lx5/f;->c:Lx5/f;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx5/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lz4/d;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lx5/f;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->a(Lz4/d;)Lx5/e;

    move-result-object p1

    return-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->a(Lz4/d;)Lq6/g;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
