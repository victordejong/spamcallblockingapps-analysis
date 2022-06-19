.class public Landroidx/webkit/internal/ScriptReferenceImpl;
.super Landroidx/webkit/ScriptReferenceCompat;
.source "ScriptReferenceImpl.java"


# instance fields
.field private mBoundaryInterface:Lorg/chromium/support_lib_boundary/ScriptReferenceBoundaryInterface;


# direct methods
.method private constructor <init>(Lorg/chromium/support_lib_boundary/ScriptReferenceBoundaryInterface;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/webkit/ScriptReferenceCompat;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/webkit/internal/ScriptReferenceImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/ScriptReferenceBoundaryInterface;

    return-void
.end method

.method public static toScriptReferenceCompat(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/ScriptReferenceImpl;
    .locals 1

    .line 42
    const-class v0, Lorg/chromium/support_lib_boundary/ScriptReferenceBoundaryInterface;

    .line 43
    invoke-static {v0, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/ScriptReferenceBoundaryInterface;

    .line 45
    new-instance v0, Landroidx/webkit/internal/ScriptReferenceImpl;

    invoke-direct {v0, p0}, Landroidx/webkit/internal/ScriptReferenceImpl;-><init>(Lorg/chromium/support_lib_boundary/ScriptReferenceBoundaryInterface;)V

    return-object v0
.end method


# virtual methods
.method public remove()V
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/webkit/internal/ScriptReferenceImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/ScriptReferenceBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/ScriptReferenceBoundaryInterface;->remove()V

    return-void
.end method
