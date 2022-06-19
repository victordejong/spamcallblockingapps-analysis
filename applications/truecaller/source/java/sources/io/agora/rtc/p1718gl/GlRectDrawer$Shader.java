package io.agora.rtc.p1718gl;
/* renamed from: io.agora.rtc.gl.GlRectDrawer$Shader */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/GlRectDrawer$Shader.class */
public class GlRectDrawer$Shader {
    public final GlShader glShader;
    public final int texMatrixLocation;

    public GlRectDrawer$Shader(String str) {
        GlShader glShader = new GlShader("varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n", str);
        this.glShader = glShader;
        this.texMatrixLocation = glShader.getUniformLocation("texMatrix");
    }
}
