.class public final Landroidx/browser/trusted/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/browser/trusted/d;


# direct methods
.method private constructor <init>(Landroidx/browser/trusted/d;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/browser/trusted/c;->a:Landroidx/browser/trusted/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 1

    .line 105
    iget-object v0, p0, Landroidx/browser/trusted/c;->a:Landroidx/browser/trusted/d;

    invoke-static {p1, p2, v0}, Landroidx/browser/trusted/b;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;Landroidx/browser/trusted/d;)Z

    move-result p1

    return p1
.end method
