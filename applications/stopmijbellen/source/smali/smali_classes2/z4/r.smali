.class public final synthetic Lz4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/b;


# static fields
.field public static final synthetic a:Lz4/r;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/r;

    invoke-direct {v0}, Lz4/r;-><init>()V

    sput-object v0, Lz4/r;->a:Lz4/r;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    sget v0, Lz4/s;->c:I

    const/4 v0, 0x0

    return-object v0
.end method
