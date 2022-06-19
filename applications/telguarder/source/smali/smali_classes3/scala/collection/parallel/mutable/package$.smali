.class public final Lscala/collection/parallel/mutable/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/mutable/package$;


# instance fields
.field private final ParArrayCombiner:Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/mutable/package$;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/mutable/package$;->MODULE$:Lscala/collection/parallel/mutable/package$;

    .line 19
    sget-object v0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;

    iput-object v0, p0, Lscala/collection/parallel/mutable/package$;->ParArrayCombiner:Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;

    return-void
.end method


# virtual methods
.method public ParArrayCombiner()Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;
    .locals 1

    .line 19
    iget-object v0, p0, Lscala/collection/parallel/mutable/package$;->ParArrayCombiner:Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;

    return-object v0
.end method
