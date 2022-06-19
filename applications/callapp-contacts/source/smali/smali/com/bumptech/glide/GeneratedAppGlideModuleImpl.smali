.class final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/util/glide/CallAppAppGlideModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 16
    new-instance p1, Lcom/callapp/contacts/util/glide/CallAppAppGlideModule;

    invoke-direct {p1}, Lcom/callapp/contacts/util/glide/CallAppAppGlideModule;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Lcom/callapp/contacts/util/glide/CallAppAppGlideModule;

    const-string p1, "Glide"

    const/4 v0, 0x3

    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/a;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/okhttp3/a;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/integration/okhttp3/a;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Lcom/callapp/contacts/util/glide/CallAppAppGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/callapp/contacts/util/glide/CallAppAppGlideModule;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Lcom/callapp/contacts/util/glide/CallAppAppGlideModule;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/util/glide/CallAppAppGlideModule;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    return-void
.end method

.method final synthetic b()Lcom/bumptech/glide/manager/o$a;
    .locals 1

    .line 1049
    new-instance v0, Lcom/bumptech/glide/a;

    invoke-direct {v0}, Lcom/bumptech/glide/a;-><init>()V

    return-object v0
.end method

.method public final isManifestParsingEnabled()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Lcom/callapp/contacts/util/glide/CallAppAppGlideModule;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/CallAppAppGlideModule;->isManifestParsingEnabled()Z

    move-result v0

    return v0
.end method
