.class Lcom/callapp/contacts/loader/external/WhitePagesLoader$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/external/WhitePagesLoader$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/external/WhitePagesLoader$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/external/WhitePagesLoader$1;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$1$1;->a:Lcom/callapp/contacts/loader/external/WhitePagesLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 127
    check-cast p1, Ljava/lang/String;

    .line 1130
    const-class v0, Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
